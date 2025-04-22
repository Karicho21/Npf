
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


