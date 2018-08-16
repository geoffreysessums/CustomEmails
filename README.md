# Project: CustomEmails
## Description: 
Written in Perl, CustomEmails produces output files suitable for sending personalized emails to customers (i.e. one file for each customer meeting certain criteria)

### Several files are included for testing:
* customer.txt
    * File containing sample input containing one customer per line
    * Each customer line contains:
        * \<email\>,\<full name\>, \<title\>,\<paid amount\>,\<owed amount\>
        * For example: 
            * petem@xyz.net,Pete Moss,Mr.,10580.00,100
            * pcorn@abc.net,Pop Corn,Col.,50,200
* template.txt
    * File containing references to variable (all caps) which should be substituted with values for each customer meeting the criteria.
    * For Example:
        * EMAIL - customer email address (1st attribute)
        * TITLE - customer title (3rd attribute)
        * FULLNAME - full customer name
        * NAME - customer name 
        * AMOUNT - owe amount
        * DATE - date the payment must be received. (passed as a parameter to customEmails.pl)


## Installation
Clone the repository wherever you like (e.g. `~/Projects/CustomEmails`):
```bash
git clone https://github.com/gsessums/CustomEmails.git
```

## Usage
To execute enter the following command, then follow the on screen prompts.
```bash
./processCustomerAccount.bash 
```
### Alternatively
You may use the testInput.txt file that's included:
```bash
./processCustomerAccount.bash < testInput.txt 
```

## Output

## Credits
Author: [Geoffrey Sessums](http://www.geoffreysessums.com)

## License
MIT License

Copyright (c) 2018 Geoffrey Sessums

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
