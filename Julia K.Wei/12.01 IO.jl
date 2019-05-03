#### IO

## Write

write(stdout,"Hello\n")     # Hello   6
write(stdout,"Hello\n");    # Hello   6
write(stdout,0x61,'\n');         # a1

## Read

read(stdin,Char)
readline(stdin)
for line in eachline(stdin)
    print("accepted: $line\n")
end