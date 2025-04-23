


This program is for ITCS 4145 A5 Nbody Parallel for

But before you begin, make sure you have access to

- A Linux-based system with SLURM workload management
- gcc compiler (this is critical to execute the program)
- Access to hpc lab computer Centaurus
- UNC Charlotte VPN if you are outside of campus or not using "eduroam" network


Steps to compile and experiment:

1. Connecting hpc lab computer by "ssh hpc-student.charlotte.edu -l your-username"
2. Authenticate with Duo
3. Type g++ -fopenmp npf.cpp -o nbody -I ~/rapidjson/include -lcurl to create executable file.
4. Schedule the job by "sbatch npf.sh"
5. Outcome should be something like "Submitted batch job [????]"
6. Wait a bit for command to finish running and record the time it takes.
7. If you would like a csv file recording the time, type "sbatch npf.sh > timelog.csv". It will schedule the job and record the time onto csv file called timelog.csv. You can name the file whatever you desire, but this timelog is what I named.

Example execution result:

- OMP_NUM_THREADS=4 ./nbody planet 200 5000000 10000 --> Simulation completed in 155.731 seconds
- OMP_NUM_THREADS=4 ./nbody 100 1 10000 100 --------------> Simulation completed in 13.730 seconds
- OMP_NUM_THREADS=4 ./nbody 1000 1 10000 100 -------------> Simulation completed in 1010.215 seconds

Time varies  each run. You won't get same time each run but should be similar.

Sequential record from A2(N-body in sequential):

200 5000000 10000, Run time was: 1356 ms = 1.356 sec
0.87% of runtime  compared to parallel run.


100 1 10000 100, Run time was: 2155 ms = 2.155 sec
15.7% of runtime compared to parallel run.

1000 1 10000 100, Run time was: 206766 ms = 206.766 sec
20.47% of runtime compared to parallel run.


