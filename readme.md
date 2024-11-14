# Sylvester Equation Solvers

## Project Overview
This project includes implementations of two variants for solving the discrete Sylvester equation:
- **Schur-Schur Algorithm** (SS.m): Standard approach using two matrices in Schur form.
- **Hessenberg-Schur Algorithm** (HS.m): An optimized variant where matrix A is transformed into upper Hessenberg form, followed by solving linear systems in this form for improved performance.

### Key Features:
- **Schur-Schur Variant**: Implements the standard algorithm for solving Sylvester's equation using Schur form for both matrices.
- **Hessenberg-Schur Variant**: Optimizes the process by transforming matrix A to Hessenberg form and solving linear systems using a modified Generalized Pivoting (GPP) algorithm for Hessenberg matrices.
- **Linear System Solver**: A custom linear system solver `sl_gpp` is used for efficiently solving systems with Hessenberg matrices.
  
### Algorithm Details:
1. **Schur-Schur Algorithm**: This approach solves the Sylvester equation by first transforming matrices A and B into Schur form and then solving the resulting triangular systems.
2. **Hessenberg-Schur Algorithm**: This variant reduces matrix A to Hessenberg form using the HQ algorithm, improving computational efficiency. The systems of equations are then solved using a specialized solver tailored to Hessenberg matrices.

### Verification:
- Randomly generated matrices of different sizes are used to test the implementation.
- The results are compared with MATLAB’s solution to validate the correctness of the algorithms.
