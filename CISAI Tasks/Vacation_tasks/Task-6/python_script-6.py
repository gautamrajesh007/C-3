import numpy as np
import time

# create a random matrix of size 100x100
matrix1 = np.random.rand(100, 100)
matrix2 = np.random.rand(100, 100)

# matrix multiplication using loops
start = time.time()
result_loop = np.zeros((100, 100))
for i in range(100):
    for j in range(100):
        for k in range(100):
            result_loop[i][j] += matrix1[i][k] * matrix2[k][j]
end = time.time()
time_loop = end - start
print("Execution time using loops:", time_loop)

# matrix multiplication using vectorization
start = time.time()
result_vec = np.matmul(matrix1, matrix2)
end = time.time()
time_vec = end - start
print("Execution time using vectorization:", time_vec)

# difference in time complexity
print("Difference in time complexity:", time_loop - time_vec)
