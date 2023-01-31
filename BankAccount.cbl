       identification division.
       class-id BankAccount.
       working-storage section.
       01 account-number pic 9(8) property as "AccountNumber".
       01 balance float-long property.
       method-id Withdraw.

       procedure division using amount as float-long
                      returning result as condition-value.
       *> Process for general withdrawal from a bank account
           ...
       end method.
       method-id PerformWithdrawal static.

       procedure division using by value amount as float-long
                                         account as type BankAccount.
           if not account::Withdraw(amount)
               *> perform error condition
               display "not true"
           else
               display "true"
           end-if

       end method.
       end class.

       class-id SavingsAccount
           inherits type BankAccount.

       method-id Withdraw override.

       procedure division using amount as float-long
                      returning result as condition-value.

       end method.
       *> Specialized process for Savings withdrawal.

       end class.
       class-id DebitAccount
           inherits BankAccount.

       method-id Withdraw override.

       procedure division using amount as float-long
                      returning result as condition-value.

       end method.
       *> Specialized process for Debit withdrawal.

       end class.
