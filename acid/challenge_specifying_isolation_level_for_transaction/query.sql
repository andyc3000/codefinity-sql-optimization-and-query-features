BEGIN;
    -- Start a transaction with SERIALIZABLE isolation level
    SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

    -- Update the balance of the account
    UPDATE BankAccounts
    SET balance = balance + 100
    WHERE account_number = 789;

    -- Insert a log entry for the update
    INSERT INTO UserLogs (account_number, action)
    VALUES (789, 'Adding $100');
COMMIT;