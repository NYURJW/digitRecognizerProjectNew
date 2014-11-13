function optimizedParameters = optimizeParametersCrossValidation(dataSet,typeOfKernel)
%this function optimized parameters of SVM using different kernels
%Input:
%dataSet---it is a matrix.the first column of dataSet should be the class label and the
%          other columns are different features. Different rows represent different
%          sample.
%typeOfKernel---it is a string. it can be linear,polynomial and gaussian.

%Output:
%optimizedParameters---it is a vector;
%                      if typeOfKernel = linear: it returns C.
%                      if typeOfKernel = polynomial:it returns C,p and q.
%                      if typeOfKernel = gaussian:it returns C,sigma.

end