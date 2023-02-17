# BASH SCRIPT Examples

Uploading my recent BASH Script files here, Will keep updating, whenever facing new script challenges.

Details about the Scripts

---
### 1. Calculator

[Calculator.sh](https://github.com/ganeshpondy/Script-Examples/blob/main/Calculator.sh)

Script will take two integer values as input and will perform mathematical operations like Addition, Subtraction, Multiplication and Division. Used function method to call each operation.

#### Sample Output:

```python
$ ./Calculator.sh 
Enter First Number: 25
Enter secound Number: 15
---------------------------- 
Valid Options
1 Addition
2 Subtraction
3 Multiplication
4 Division
----------------------------

Enter the Step: 3
The result is 375
```
---

### 2. Add_Input_Values_in_Array

[Add_Input_Values_in_Array.sh](https://github.com/ganeshpondy/Script-Examples/blob/main/Add_Input_Values_in_Array.sh)

Script will take input as multiple interger values. Convert into an array of numbers and it will print sum.

#### Sample Output:

```python
$ ./Add_Input_Values_in_Array.sh
Enter values with space: 1 2 3 4 5 6 7 8 9
45

$ ./Add_Input_Values_in_Array.sh 
Enter values with space: 10 10 10
30
```
---

### 3. Count_Lines_Words_Charactes

[Count_Lines_Words_Charactes.sh](https://github.com/ganeshpondy/Script-Examples/blob/main/Count_Lines_Words_Charactes.sh)

Script that takes a filename as input and counts the number
of lines, words, and characters in the file. Used "wc" command to count lines, words and characters.

#### Sample Output:
```python
$ ./Count_Lines_Words_Charactes.sh 
Enter the File Name: sample_file.txt
number of line = 18        
number of Words = 192      
number of Characters = 1220

$ ./Count_Lines_Words_Charactes.sh
Enter the File Name: /mnt/c/GaneshB/DRIVE/DevOps/LAB/3-extension/file1.txt
number of line = 2
number of Words = 10
number of Characters = 54
$
```
---

### 4. Common_Words_Count

[Common_Words_Count.sh](https://github.com/ganeshpondy/Script-Examples/blob/main/Common_Words_Counts.sh)

Script that takes a text file as input and outputs a summary
of the most common words and their frequency. Used "uniq" command for the operation.

#### Sample Output:

```python
$ ./Common_Words_Counts.sh
Enter the File name: /mnt/c/GaneshB/DRIVE/DevOps/SandipDas/LAB/sample_file.txt
     10 the
      8 of
      8 Lorem
      6 and
      6 a
      4 with
      4 type
      4 text
      4 is
      4 has
$
```

### 5. Move_Files_as_per_Extensions

[Move_Files_as_per_Extensions.sh](https://github.com/ganeshpondy/Script-Examples/blob/main/Move_Files_as_per_Extensions.sh)

Script that searches a directory for files with a specific
extension and moves them to a new directory. it will seach only on the specified folder, -maxdepth is used for it . Used "find" command with xargs and mv.

#### Find Command:
```python
find "$user_dir" -maxdepth 1 -name "*.$file_type" -print0 | xargs -0 -I {} mv {} "$user_dir"/"$file_type"/
```

### 6. Random Password Generator

[PassWord_Generator.sh](https://github.com/ganeshpondy/Script-Examples/blob/main/PassWord_Generator.sh)

Script that generates 5 random passwords for a specified
length and ask user to use special charters or not.

#### Sample Output:
```python
$ ./PassWord_Generator.sh 
Please enter the length of the password: 12
Do you Required Special Characters in your Password? (yes/no): yes
---------------------------
5 Sample Password
---------------------------
kY%VH^vT\0H7
RmW<8w(]`{F`
8PZ&qY<~n^G/
ph)xNSsi+*R)
L^4~pj>6&a!$
---------------------------

$ ./PassWord_Generator.sh 
Please enter the length of the password: 12
Do you Required Special Characters in your Password? (yes/no): no
---------------------------
5 Sample Password
---------------------------
E9f7eee970fE
2df4712B86eD
fCcE0Ec5FFaa
e1FdE71adDFC
A0B51Fde7B38
---------------------------
$
```

