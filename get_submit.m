function [submit] = get_submit(train_table)
        %This function input the training set (the user one) and get rid of
        %everthing except the rows with submissions.
        % Both the input and output is a table.
        %This function is extremely fast, which uses 3 seconds to finish
        %3million lines.

        reference = string(table2array(train_table(:,6)));
        
        toDelete = reference ~= '';
        train_table(toDelete,:) = [];
        
        submit = train_table(:,1:5);
end
