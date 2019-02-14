# Bank_techTest #

## Requirements ##

- Deposits, withdrawal.<br/>
- Account statement (date, amount, balance) printing.<br/>
- Data can be kept in memory (it doesn't need to be stored to a database or anything).<br/>
- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)

## user story ##

Built from the previous requirements :

```
As a user
So that I can make deposit on my bank account
I need to be able to add money on my account
```
```
As a user
So I can make withdrawal from my bank account
I need to be able to deduct money from my account
```
```
As a user
So I can have an overview of my account with a statement
I need to see the date of the movement on my account
```
```
As a user
So I can have an overview of my account with a statement
I need to see the credit of my account
```
```
As a user
So I can have an overview of my account with a statement
I want to see the debit of my account
```
```
As a user
So I can have an overview of my account with a statement
I want to see my total balance
```

## Approach ##

![bank_techtest](https://user-images.githubusercontent.com/43742795/52817759-bae34a00-309c-11e9-9293-22486a0a1f06.png)

### Tech stack ###

* Ruby
* Rspec

![rspec_coverage_bank_test](https://user-images.githubusercontent.com/43742795/52815803-88831e00-3097-11e9-90de-47833c32007a.png)


### Code quality ###

* simpleCov - code coverage (test coverage visible on the screen shot above)
* Rubocop - linter

![rubocop_bank_test](https://user-images.githubusercontent.com/43742795/52719590-d4ea3300-2f9d-11e9-8600-40834eb4040e.png)

## How to use ##

### Set Up ###

1. clone the repo<br/>
Under the repo name click *clone or download*<br/>
Click on *use HTTPs*, copy the clone URL of the repo<br/>
In the terminal go on the working directory where you want to clone the project<br/>
Use the `git clone` command and paste the clone URL then press enter :

```shell
$ git clone https://github.com/your-username/your-repositary.git
```

2. On your local machine go inside of the *Bank_tech_test* directory :

```shell
$ cd Bank_tech_test
```
3. To install all the *gems* contained in the *Gemfile*, install and run *Bundle* :
Install :

```shell
$ install bundle
```
Run:

```shell
$ bundle
```
4. You can see the different directories, with the `ls` command.

5. You can open the *.rb* file wanted to read and/or change it in your text editor or using `vim` :

```shell
$ vim wanted_file.rb
```
Or you can just read the contains of it from the command line with the `cat` command :

```shell
$ cat wanted_file.rb
```

### Run the tests ###

1. Check that the codes are passing the tests. From the root *Bank_tech_test* directory, run the *spec*.<br/>
You can check all the files in one go:

```shell
$ cd Bank_tech_test
$ rspec
```
To check only one file at a time :

```shell
$ cd Bank_tech_test
$ rspec spec/file_name_spec.rb
```

2. Check that the code respects the quality of the *Rubocop* guideline, by running `rubocop` from the *Bank_tech_test* directory :

```shell
$ cd Bank_tech_test
$ rubocop
```

## Interact with the code ##

1. In the *lib* directory, open the *irb_visibility.rb* file, and follow what is written.<br/>
2. Type `irb` in your command line:

  ```shell
  $ cd Bank_tech_test
  $ irb
  ```

3. Once in IRB, do the following step in order :

```shell
2.5.1 :001 >  require './lib/account.rb'
2.5.1 :001 >  require './lib/accountflow.rb'
2.5.1 :001 >  require './lib/transaction.rb'
2.5.1 :001 >  require './lib/bankstatement.rb'
2.5.1 :001 >  account = Account.new
2.5.1 :001 >  account.deposit(1000)
2.5.1 :001 >  account.deposit(2000)
2.5.1 :001 >  account.withdraw(500)
2.5.1 :001 >  account.display_statement
```

This will display: (the date will change depending on when you did it)

```shell
date || credit || debit || balance
2019-02-13 || 0 || 500 || 2500
2019-02-13 || 2000 || 0 || 3000
2019-02-13 || 1000 || 0 || 1000
```

![irb_interaction_banktest](https://user-images.githubusercontent.com/43742795/52815923-dbf56c00-3097-11e9-8262-b5912c260b13.png)
