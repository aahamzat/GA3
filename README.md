# GA3 answers - Abdulafees Hamzat

------------------------------------------------------------------------

## Part A: Your README, data, and Git repo

### 1: Create subdirs and copy files

### 2: Initialize a Git repository, and commit the README and `.gitignore`

### 3: Commit throughout the assignment

------------------------------------------------------------------------

## Part B: Basic shell scripts

### 4: Predict the output of `echo.sh`


*Answer* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08`): 

```
  Oct7
  Oct8

  Finished

#The command will print the first and second variables but empty line for third as it wasn't provided
```

*Answer* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08 Oct09 Oct10`):

```
  Oct7
  Oct8
  Oct09
  Finished

#The command will print first three variables provided but omit the last one
```

*Answer* (prediction and reasoning for `bash scripts/echo.sh Oct07 Oct08 "Oct09 Oct10"`):

```
  Oct7
  Oct8
  Oct09 Oct10
  Finished

#The command will print the first and second variables and the variables in quotation as a single variable
```

*Answer* (prediction and reasoning for `bash scripts/echo.sh results/fastqc/*.html`):

```
  results/fastqc/*.html
  

  Finished

#The command will print the argument as the first variable but empty line for second and third as it wasn't provided
```

### 5: Run `echo.sh` and compare with your predictions

```bash
bash scripts/echo.sh Oct07 Oct08
```

The output of the command was:

``` 
Oct07
Oct08
scripts/echo.sh: line 6: $3: unbound variable
```

```bash
bash scripts/echo.sh Oct07 Oct08 Oct09 Oct10
```

The output of the command was:

```    
Oct07
Oct08
Oct09
Finished     
```

```bash
bash scripts/echo.sh Oct07 Oct08 "Oct09 Oct10"
```

The output of the command was:

```
Oct07
Oct08
Oct09 Oct10
Finished         
```

```bash
bash scripts/echo.sh results/fastqc/*.html
```

The output of the command was:

```  
results/fastqc/S63_R1_fastqc.html
results/fastqc/S63_R2_fastqc.html
results/fastqc/S64_R1_fastqc.html
Finished
#The command picked the first three `.html` file in `results/fastqc/`. I am not aware the script can run on any specified dir
```

*Answer*: Which output (if any) differed from your prediction, and why?

> 1. In the first command, I forgot about the `set` command that will prevent the script from runnig beyond the error (third variable not provided).
> 2. In the last command, the command picked the first three `.html` file in `results/fastqc/`. I am not aware the script can run on any specified dir.

### 6: Write the `printline.sh` script


### 7: Test `printline.sh` twice

Test 1:

```bash
# Your command:
bash scripts/printline.sh data/metadata.tsv
```

The output of the command was:

```
Line number:
S79     10dpi   cathemerium
```

Test 2 (with redirection), and checking the contents of the output file:

```bash
# Your command:
bash scripts/printline.sh data/metadata.tsv results/line_number.txt
```

The output of the command that checks the file contents was:

```
Line number:
S79     10dpi   cathemerium        
```

------------------------------------------------------------------------

## Part C: A script to run MultiQC

### 8: Get a MultiQC container link

*Answer*: The container link (URI) is:

### 9: MultiQC's help info, and the MultiQC command

Code to run `multiqc --help` with the container:

```bash
# Your command:
apptainer run oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20

#Run in Singularity GNU
multiqc --help 

```

The MultiQC command to run MultiQC on `results/fastqc` with output in `results/multiqc`:

```bash
# Your command:
multiqc -o results/fastqc results/multiqc
```

### 10: Write the `multiqc.sh` script


### 11: Run `multiqc.sh`

Code to run the script:

```bash
# Your command:
bash scripts/multiqc.sh
```


*Answer*: Number of FastQC reports MultiQC found:

> Found 44 reports

*Answer*: Does that match what you expected? Why/why not?

> Yes. Because there are only 44 `.html` files which are the input files for `multiqc`.

### 12: Make `multiqc.sh` accept arguments, and rerun it


Code to rerun the script:

```bash
# Your command:
```

<!-- No need to paste any output -->

### 13: Differences between the two MultiQC runs

*Answer*:

------------------------------------------------------------------------

## Part D: Pandoc to render Markdown

### 14: The structure of the Pandoc command

*Answer* (options and arguments, and what each does):

*Answer* (how does Pandoc know which output format to produce?):

### 15: Render your README to PDF and HTML

```bash
pandoc -o README.pdf README.md
```

- Command to render to HTML:

```bash
# Your command:
```

### 16: Should the rendered files be committed?

*Answer*: Should the rendered files be committed to your Git repo? Why/why not?

### 17: Install the PDF Viewer extension and view the PDF

*Answer*: One observation about the rendered PDF file:

## Part E: Publish your repo on GitHub

### 18: Create a GitHub repository

<!-- No command/output needed here -- we check your GitHub repo directly. -->

### 19: Connect your local repo to GitHub, and push

<!-- No command/output needed here -- we check your GitHub repo directly. -->

### 20: Create an Issue to tag the instructors

<!-- No command/output needed here -- we check your GitHub repo directly. -->

------------------------------------------------------------------------

## Bonus

### 21: Explore the MultiQC report

*Answer* (one insight you gained):

*Answer* (one thing you're confused about):

### 22: Pandoc versions

```bash
# Your command:
```

The output of the command(s) was:

```         
```

*Answer*: Is the Pandoc version available by default the most recent one?

*Answer*: Which Pandoc version are you using after loading the module?