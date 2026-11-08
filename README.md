# Code for the paper **Theory and Algorithms for Solving the Multivariate Linear Model With a Unified Framework: From $\ell^1$-Norm Approximation
to $\ell^1$-Norm Optimization** published in IEEE Access
-**Author**: Zhi-Qiang Feng, Hong-Yan Zhang, et al.
-**Title**: Theory and Algorithms for Solving the Multivariate Linear Model With a Unified Framework: From $\ell^1$-Norm Approximation
to $\ell^1$-Norm Optimization
-**Journal**: IEEE Access
-**Volume-Number-Pages**: 14(7): 105143-105165
-**Link for Download**: https://ieeexplore.ieee.org/abstract/document/11603347
-**Abstract**: It is a challenging problem to solve the multivariate linear model (MLM) $Ax = b$ with the $\ell^1$-norm approximation method such that $||Ax-b||_1$, 
the $\ell^1$-norm of the residual error vector (REV), is minimized. In this work, our contributions lie in three aspects: firstly, a REV-based equivalence theorem
for the structure of the $\ell^1$-norm optimal solution to the MLM is proposed and proved, which establishes a theoretical connection between MLM $\ell^1$-norm 
approximation and residual-domain basis-pursuit-type $\ell^1$-optimization, with the MLM solution reconstructed through the Moore–Penrose inverse; secondly, the
REV formulation is extended to the weighted $\ell^1$-norm approximation problem by using diagonal scaling of the residual vector; thirdly, a unified algorithmic 
framework for solving the MLM with ℓ1 -norm optimization is proposed and six REV-based algorithms (L1-GPSR, L1-TNIPM, L1-HP, L1-IST, L1-ADM, L1-POB) are designed, 
where established optimization techniques are reformulated under a common residual-domain model, input-output structure, and Moore–Penrose inverse reconstruction 
scheme. There are three significant characteristics in the algorithms discussed: they are implemented with simple matrix operations which do not depend on specific
optimization solvers; they are described with algorithmic pseudo-codes and implemented with Python and Octave/MATLAB which means easy usage; and the high accuracy 
and efficiency of our six REV-based algorithms can be achieved successfully in the scenarios with different levels of data redundancy. Numerical and real-data 
experiments further illustrate the accuracy, efficiency, and robustness of the proposed $\ell^1$-based estimators, especially their reduced sensitivity to 
influential observations compared with the least-squares estimator. We hope that the unified theoretic and algorithmic framework with source code released on 
GitHub could motivate the applications of the $\ell^1$-norm optimization for $\ell^1$-based parameter estimation of MLM arising in science, technology, engineering, 
mathematics, economics, and so on.
