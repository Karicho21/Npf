import pandas as panda
import matplotlib.pyplot as pylt

data = [
	(test)
]

d = panda.DataFrame(data, columns=["Description", "Time"])

d["Elements"] = d["Description"].apply(lambda x: int(x.split()[4]))

pylt.plot(d["Elements"], d["Time"], marker="o", linestyle="-", color="b", label="Sort Time")

pylt.xlabel("Number of Integers")
pylt.ylabel("Time (s)")
pylt.title("Execution Time of MergeSort")
pylt.xscale('log')
pylt.yscale('log')
pylt.legend()
pylt.grid(True)

pylt.savefig("Timelog.pdf", format="pdf")

pylt.show()
