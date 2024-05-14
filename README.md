# Data Cleaning Project with SQL
## Objectives 
1. Removing Duplicates 
2. Standardising the data 
3. Evaluating Null or blank values
4. Removing any unecessary columns 

## Results 
1. Display of duplicate records in the table
   
   Dealing with redundant data which is demonstrated by the row number indicating the same record occurs more than once and thus dealt with by eliminating them
   
   ![image](https://github.com/kamibrenda/sql-tut/assets/42267047/dce6a4d9-983d-4647-a4f1-dd3973b18b5e)

3. Standardising of columns
     
   Finding issues in the data and fixing it such as changing the date and time format to 'YYYY-MM-DD'

   ![image](https://github.com/kamibrenda/sql-tut/assets/42267047/b8006322-fb9c-4a6b-86e6-7c7b1502910e)

4. Evaluating Null or blank values
   
   Removing null columns and blank values in the staged data for which has been demonstrated by the industry column below.

![image](https://github.com/kamibrenda/sql-tut/assets/42267047/215d1014-6f84-4ef9-8ff2-6f3eb0e1cac0)



   


















## Results Display
1. Partition By results
   
   ![image](https://github.com/kamibrenda/sql-tut/assets/42267047/68eea029-1ef7-4916-90d4-a2af919ee343)

2. Substrings + Use cases

   ![image](https://github.com/kamibrenda/sql-tut/assets/42267047/0f754817-eb25-4e80-9dce-846227f06b01)

   *with Fuzzymatch*

   ![image](https://github.com/kamibrenda/sql-tut/assets/42267047/8b31047e-9ce0-476c-9109-35b4f0f2f188)

3. Window Functions vs Group By
   
   ![image](https://github.com/kamibrenda/sql-tut/assets/42267047/5dd99d8c-6eb3-4ff7-87d9-84e19e7fc1ee)

   *with rolling total*
   
   Starts at a specific value and adds on values from subsequent rows based on the partitions. In this case the starting point is Pam's salary which is conseuently added to Angela's salary to get the 83k and so forth till the final value of 124k.
   This is partitioned by the unique value of gender in male vs female hence from Jim starts at 45k and the rule applies to get the final value of 313k.

   ![image](https://github.com/kamibrenda/sql-tut/assets/42267047/65d83f2e-acb5-4c4f-b22e-71a894c0d192)

   *with row_num, rank and dense_rank*

   ![image](https://github.com/kamibrenda/sql-tut/assets/42267047/d43df223-de42-4386-a87b-0f0694bff6ba)




