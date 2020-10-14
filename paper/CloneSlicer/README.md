# Clone-Slicer: Detecting Domain Specific Binary Code Clones through Program Slicing 
## Target
Identify more code clones and cut the time-to-solution

## Process
1. Program slicing
2. Vector embed
3. Calculate similarity
4. Verification

### Program slicing
Keep pointer related instructions (load or store) and rewrite others to nop by CFG and DDG

### Vector embed
Embed binary code by sliding window method

### Calculate similarity
Let similar code fragments be clustered together

### verification
Use angr to do binary symbolic execution for verification

## Paper Review
Maybe we can use the same way to determine the binary's firmware.
