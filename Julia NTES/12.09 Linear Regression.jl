# Linear regression

using DataFrames
using GLM
using GLMNet
using Plots
using LIBSVM
using RDatasets
using Statistics

data = DataFrame(X=[1,2,3], Y=[2,4,7])
ols  = lm(@formula(Y ~ X), data)

stderror(ols)

newX = DataFrame(X=[2,3,4]);
GLM.predict(ols, newX)

data = DataFrame(X=[1,2,3], Y=[2,4,6])
newX = DataFrame(X=[2,3,4])
ols  = lm(@formula(Y ~ X), data)
GLM.predict(ols, newX)

# GLM Model

data = DataFrame(X=[0,1,2,3,4], Y=[0.1296,0.0864,0.0576,0.0384,0.0256])
probit = glm(@formula(Y ~ X), data, Binomial(), ProbitLink())

newX = DataFrame(X=[1,2,3,4])
GLM.predict(probit, newX)

# Linear Regression

iris = dataset("datasets", "iris")

data = DataFrame();
data[:x] = iris[1:50, :SepalWidth]
data[:y] = iris[1:50, :SepalLength]
model = lm(@formula(y ~ x), data)

plot(GLM.predict(model))
plot!(data[:y])

# GLM Model

model = glm(@formula(y~x), data, Normal(), IdentityLink())

plot(GLM.predict(model))
plot!(data[:y])