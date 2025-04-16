import concurrent.futures
import time
import os
import sys

MAX_WORKERS = int(os.getenv("SLURM_CPUS_PER_TASK", os.cpu_count()))

def compute_square(n):
    print(f"Processing {n}")
    time.sleep(1)  # Simulate some computation
    return n * n


def main(num):
    # Get the number of available CPUs
    # available_cpus = os.cpu_count()

    print(f"MAX_WORKERS = {MAX_WORKERS}")

    print(f"num = {num}")
    numbers = list(range(num))  # Numbers from 0 to 9

    # Print the number of CPUs being used for the task
    with concurrent.futures.ThreadPoolExecutor(max_workers=MAX_WORKERS) as executor:
        results = list(executor.map(compute_square, numbers))
    
    print("Results:", results)

if __name__ == "__main__":
    print(sys.argv)
    number = int(sys.argv[1])
    main(number)
