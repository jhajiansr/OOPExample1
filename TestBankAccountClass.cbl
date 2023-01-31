       identification division.
       
       program-id. TestBankAccounts.
       01 account1 type BankAccount.
       01 account2 type BankAccount.

       procedure division.
           set account1 to new SavingsAccount
           set account1::AccountNumber to 12345678
           set account1::balance to 500.00

           set account2 to new DebitAccount
           set account2::AccountNumber to 87654321
           set account2::balance to 100.00

          invoke type BankAccount::PerformWithdrawal(100,account1)
           
       end program TestBankAccounts.
