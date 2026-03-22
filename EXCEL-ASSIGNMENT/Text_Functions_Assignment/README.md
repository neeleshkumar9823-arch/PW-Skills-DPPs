# Excel Text Functions Assignment ✨

This assignment demonstrates how to use **Excel text functions** to manipulate, clean, combine, search, replace, and format text data.  
Each exercise highlights **why a particular function is used** and the **criteria it applies**.

---

## 📘 Topics Covered
1. **Basic Text Functions** – Extracting substrings and counting characters.
2. **Cleaning & Standardizing Text** – Removing spaces, changing case, and proper capitalization.
3. **Combining Text** – Concatenation using different approaches.
4. **Advanced Search & Replace** – Locating substrings and replacing text dynamically.
5. **Formatting & Validating Text** – Formatting dates/numbers, converting values, cleaning strings, and validating equality.

---

## ✅ Summary of Steps Taken

### Day 1: Basic Text Functions
- **LEFT** → Used to extract characters starting from the left side of a string.  
  Example: `=LEFT(Text,NumberOfCharacters)` → `=LEFT("ExcelTipsAreGreat",5)`  
  *Criteria:* Take first 5 characters.

- **RIGHT** → Extracts characters from the end of a string.  
  Example: `=RIGHT(Text,NumberOfCharacters)`  
  *Criteria:* Take last 4 characters.

- **MID** → Extracts characters from the middle of a string based on position.  
  Example: `=MID(Text,StartPosition,NumberOfCharacters)`  
  *Criteria:* Start at 6th character, take 4 characters.

- **LEN** → Counts total characters in a string.  
  Example: `=LEN(Text)`  
  *Criteria:* Count all letters, spaces, and symbols.

- **MID (middle extraction)** → Used again to pull a specific middle section.  
  *Criteria:* Start at 7th character, take 6 characters.

---

### Day 2: Cleaning & Standardizing Text
- **TRIM** → Removes extra spaces.  
  Example: `=TRIM(Text)`  
  *Criteria:* Keep only single spaces between words.

- **UPPER** → Converts text to uppercase.  
  Example: `=UPPER(Text)`  
  *Criteria:* All letters become capital.

- **LOWER** → Converts text to lowercase.  
  Example: `=LOWER(Text)`  
  *Criteria:* All letters become small.

- **PROPER** → Capitalizes first letter of each word.  
  Example: `=PROPER(Text)`  
  *Criteria:* Standard title case formatting.

- **TRIM + PROPER** → Combined to clean and capitalize text in one step.  
  Example: `=TRIM(PROPER(Text))`  
  *Criteria:* Remove spaces + capitalize properly.

---

### Day 3: Combining Text
- **CONCAT** → Joins multiple text values.  
  Example: `=CONCAT(Text1," ",Text2)`  
  *Criteria:* Combine words with a space.

- **TEXTJOIN** → Joins text with a delimiter (like commas).  
  Example: `=TEXTJOIN(",",TRUE,RangeOrValues)`  
  *Criteria:* Combine items separated by commas.

- **& Operator** → Simple way to join text.  
  Example: `=Value1 & ": " & Value2`  
  *Criteria:* Combine values with symbols or text.

- **TEXTJOIN with range** → Creates a list from multiple cells.  
  *Criteria:* Join all values in a range with commas.

- **CONCAT for names** → Combine first name and last name.  
  Example: `=CONCAT(FirstName," ",LastName)`  
  *Criteria:* Create full names.

---

### Day 4: Advanced Search & Replace
- **SEARCH** → Finds position of a character (not case-sensitive).  
  Example: `=SEARCH("c",Text)`  
  *Criteria:* Return position of "c".

- **FIND** → Finds position of text (case-sensitive).  
  Example: `=FIND("Excel",Text)`  
  *Criteria:* Return position of "Excel".

- **SUBSTITUTE** → Replaces specific text with new text.  
  Example: `=SUBSTITUTE(Text,"Old","New")`  
  *Criteria:* Replace "World" with "Excel".

- **REPLACE** → Replaces text based on position.  
  Example: `=REPLACE(Text,Start,Length,NewText)`  
  *Criteria:* Replace year "2020" with "2025".

- **FIND + LEFT** → Find delimiter position and extract part before it.  
  Example: `=LEFT(Text,FIND("-",Text)-1)`  
  *Criteria:* Extract first part before "-".

---

### Day 5: Formatting & Validating Text
- **TEXT (date formatting)** → Formats dates into readable format.  
  Example: `=TEXT(Date,"dd-mmm-yyyy")`  
  *Criteria:* Show as "21-Jan-2025".

- **VALUE** → Converts text numbers into numeric values.  
  Example: `=VALUE("12345")`  
  *Criteria:* Turn text into number.

- **CLEAN** → Removes non-printable characters.  
  Example: `=CLEAN(Text)`  
  *Criteria:* Keep only printable characters.

- **EXACT** → Compares two strings exactly (case-sensitive).  
  Example: `=EXACT(Text1,Text2)`  
  *Criteria:* Check if "Excel" = "excel".

- **TEXT (number formatting)** → Formats numbers with commas/decimals.  
  Example: `=TEXT(Number,"#,###.##")`  
  *Criteria:* Show 1234.567 as "1,234.57".

---

## 🎯 Learning Outcomes
- Understood **criteria-based text manipulation** in Excel.  
- Learned how to **clean and standardize text** for consistency.  
- Practiced **joining text dynamically** with delimiters.  
- Applied **search and replace functions** for flexible editing.  
- Gained skills in **formatting and validating text/numbers** for reporting.

---

## 📂 Usage
Open the Excel file `Text_Functions_Assignment.xlsx` and follow each day’s exercises.  
Each solution explains **why the formula is used** and the **criteria applied**.

---

### Author
Prepared by **Neelesh Kumar Pandey**  
Focus: Clarity, collaboration, and visual polish in technical learning.
