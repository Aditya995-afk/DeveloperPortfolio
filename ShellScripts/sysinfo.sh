
#!/bin/bash

echo "======================================"
echo "       SYSTEM INFORMATION REPORT"
echo "======================================"

echo "Name: Aditya Sharma"
echo "Roll Number: 2601730014"
echo "Date: $(date)"
echo ""

echo "---------- CPU INFORMATION ----------"
echo "CPU Model:"
lscpu | grep "Model name" | head -1

echo "CPU Cores:"
lscpu | grep "^Core(s) per socket"

echo ""
echo "---------- MEMORY INFORMATION ----------"
free -h | awk 'NR==2 {print "Total Memory: " $2 "\nUsed Memory: " $3}'

echo ""
echo "---------- TOP 3 CPU PROCESSES ----------"
ps aux --sort=-%cpu | head -4

echo ""
echo "Report generated successfully."
echo "======================================"
