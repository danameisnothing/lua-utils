local numcheck = require("numcheck")

print("Running test cases...")
print("Is 270 a positive number : " .. tostring(numcheck:positive(270)))
print("Is -768 a positive number : " .. tostring(numcheck:positive(-768)))
print("\n")
print("Biggest numbers out of -544, -1024, -352, -768, -1092 (this is the test that failed before) : " .. tostring(numcheck:biggest({-544, -1024, -352, -768, -1092})))
print("Biggest numbers out of 320, -1024, -352, -768, -1092 : " .. tostring(numcheck:biggest({320, -1024, -352, -768, -1092})))
print("Biggest numbers out of -320, 1024, -352, 768, -1092 : " .. tostring(numcheck:biggest({-320, 1024, -352, 768, -1092})))
print("Biggest numbers out of 501, 540, 803, 910 : " .. tostring(numcheck:biggest({501, 540, 803, 910})))
print("Biggest numbers out of 23, 80, 80 : " .. tostring(numcheck:biggest({23, 80, 80})))
print("Biggest numbers out of 768, 892, 206, 921 : " .. tostring(numcheck:biggest({768, 892, 206, 921})))
print("\n")
print("Smallest numbers out of -544, -1024, -352, -768, -1092 : " .. tostring(numcheck:smallest({-544, -1024, -352, -768, -1092})))
print("Smallest numbers out of 320, -1024, -352, -768, 1092 : " .. tostring(numcheck:smallest({320, -1024, -352, -768, 1092})))
print("Smallest numbers out of -320, 1024, -352, 768, 1092 : " .. tostring(numcheck:smallest({-320, 1024, -352, 768, 1092})))
print("Smallest numbers out of 501, 540, 803, 910 : " .. tostring(numcheck:smallest({501, 540, 803, 910})))
print("Smallest numbers out of 23, 23, 78, 25 : " .. tostring(numcheck:smallest({23, 23, 78, 25})))
print("Smallest numbers out of 892, 206, 921 : " .. tostring(numcheck:smallest({892, 206, 921})))
print("\n")
print("Rounding of 5.6 : " .. tostring(numcheck:round(5.6)))
print("Rounding of 2.5 : " .. tostring(numcheck:round(2.5)))
print("Rounding of 0.49 : " .. tostring(numcheck:round(0.49)))
print("Rounding of -2.8 : " .. tostring(numcheck:round(-2.8)))
print("Rounding of -2.5 : " .. tostring(numcheck:round(-2.5)))
print("Rounding of -2.50000000001 : " .. tostring(numcheck:round(-2.50000000001)))
print("Rounding of -0.49 : " .. tostring(numcheck:round(-0.49)))