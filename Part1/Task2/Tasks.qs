namespace QCHack.Task2 {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Arrays;

    // Task 2 (2 points). f(x) = 1 if at least two of three input bits are different - easy version
    //
    // Inputs:
    //      1) a 3-qubit array "inputs",
    //      2) a qubit "output".
    // Goal: Implement a marking oracle for function f(x) = 1 if at least two of the three bits of x are different.
    //       That is, if both inputs are in a basis state, flip the state of the output qubit 
    //       if and only if the three bits written in the array "inputs" have both 0 and 1 among them,
    //       and leave the state of the array "inputs" unchanged.
    //       The effect of the oracle on superposition states should be defined by its linearity.
    //       Don't use measurements; the implementation should use only X gates and its controlled variants.
    //       This task will be tested using ToffoliSimulator.
    // 
    // For example, the result of applying the operation to state (|001⟩ + |110⟩ + |111⟩)/√3 ⊗ |0⟩
    // will be 1/√3|001⟩ ⊗ |1⟩ + 1/√3|110⟩ ⊗ |1⟩ + 1/√3|111⟩ ⊗ |0⟩.
    //
    operation Task2_ValidTriangle (inputs : Qubit[], output : Qubit) : Unit is Adj+Ctl {
        // ApplyControlledOnInt(0,X,inputs,output);
        // ApplyControlledOnInt(1,X,inputs,output);
        // use ancilla1 = Qubit();
        // use ancilla2 = Qubit();
        
        ApplyControlledOnInt(0,X,inputs,output);
        ApplyControlledOnInt(7,X,inputs,output);
        X(output);

        // X(ancilla1);
        // X(ancilla2);

        // ApplyAnd(ancilla1,ancilla2,output);

        // X(ancilla1);
        // X(ancilla2);

        // ApplyControlledOnInt(0,X,inputs,ancilla1);
        // ApplyControlledOnInt(7,X,inputs,ancilla2);

    }
}

