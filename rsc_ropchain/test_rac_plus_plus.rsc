@using pr_org() = pro
@section.main org 0xd730 backup 0xe9e0
hello:
# Feature 1: Implicit eval and standard eval
eval(adr(hello) + 0x2)
adr(hello) + 0x2

# Feature 2: default dec numbers vs @using hex
16 16

@using hex
16 16

# Feature 3: binary data
bin 1010
bin 1010 1100

# Feature 4: using alias pro for pr_org()
pro
pro + 0x2

@section.sub org 0xd800
0x1234