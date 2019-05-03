## Code Generation

cal(a, b, c) = a + b * c
cal(1, 2, 3)            # 7
cal(1.0, 2.0, 3.0)      # 7.0
cal(1, 2, 3.0)          # 7.0

# Show The Process via @code_lowered
@code_lowered cal(1, 2, 3)
    # CodeInfo(
    # 1 ─ %1 = b * c
    # │   %2 = a + %1
    # └──      return %2
    # )
@code_lowered cal(1.0, 2.0, 3.0)
    # 1 ─ %1 = b * c
    # │   %2 = a + %1
    # └──      return %2
    # )
@code_lowered cal(1, 2, 3.0)
    # CodeInfo(
    # 1 ─ %1 = b * c
    # │   %2 = a + %1
    # └──      return %2
    # )

# Show The Changes via @code_typed
@code_typed cal(1, 2, 3)
    # CodeInfo(
    # 1 ─ %1 = (Base.mul_int)(b, c)::Int64
    # │   %2 = (Base.add_int)(a, %1)::Int64
    # └──      return %2
    # ) => Int64
@code_typed cal(1.0, 2.0, 3.0)
    # CodeInfo(
    # 1 ─ %1 = (Base.mul_float)(b, c)::Float64
    # │   %2 = (Base.add_float)(a, %1)::Float64
    # └──      return %2
    # ) => Float64
@code_typed cal(1, 2, 3.0)
    # CodeInfo(
    # 1 ─ %1 = (Base.sitofp)(Float64, b)::Float64
    # │   %2 = (Base.mul_float)(%1, c)::Float64
    # │   %3 = (Base.sitofp)(Float64, a)::Float64
    # │   %4 = (Base.add_float)(%3, %2)::Float64
    # └──      return %4
    # ) => Float64

# Show The Process of LLVM Compiler via @code_llvm
@code_llvm cal(1, 2, 3)
    # define i64 @julia_cal_15087(i64, i64, i64) {
    # top:
    # ; ┌ @ int.jl:54 within `*'
    #    %3 = mul i64 %2, %1
    # ; └
    # ; ┌ @ int.jl:53 within `+'
    #    %4 = add i64 %3, %0
    # ; └
    #   ret i64 %4
    # }
@code_llvm cal(1.0, 2.0, 3.0)
    # define double @julia_cal_15100(double, double, double) {
    # top:
    # ; ┌ @ float.jl:399 within `*'
    #    %3 = fmul double %1, %2
    # ; └
    # ; ┌ @ float.jl:395 within `+'
    #    %4 = fadd double %3, %0
    # ; └
    #   ret double %4
    # }
@code_llvm cal(1, 2, 3.0)
    # define double @julia_cal_15106(i64, i64, double) {
    # top:
    # ; ┌ @ promotion.jl:314 within `*'
    # ; │┌ @ promotion.jl:284 within `promote'
    # ; ││┌ @ promotion.jl:261 within `_promote'
    # ; │││┌ @ number.jl:7 within `convert'
    # ; ││││┌ @ float.jl:60 within `Type'
    #        %3 = sitofp i64 %1 to double
    # ; │└└└└
    # ; │ @ promotion.jl:314 within `*' @ float.jl:399
    #    %4 = fmul double %3, %2
    # ; └
    # ; ┌ @ promotion.jl:313 within `+'
    # ; │┌ @ promotion.jl:284 within `promote'
    # ; ││┌ @ promotion.jl:261 within `_promote'
    # ; │││┌ @ number.jl:7 within `convert'
    # ; ││││┌ @ float.jl:60 within `Type'
    #        %5 = sitofp i64 %0 to double
    # ; │└└└└
    # ; │ @ promotion.jl:313 within `+' @ float.jl:395
    #    %6 = fadd double %4, %5
    # ; └
    #   ret double %6
    # }

# Show Machine Language via @code_llvm
@code_llvm cal(1, 2, 3)
    # define i64 @julia_cal_15110(i64, i64, i64) {
    # top:
    # ; ┌ @ int.jl:54 within `*'
    #    %3 = mul i64 %2, %1
    # ; └
    # ; ┌ @ int.jl:53 within `+'
    #    %4 = add i64 %3, %0
    # ; └
    #   ret i64 %4
    # }

