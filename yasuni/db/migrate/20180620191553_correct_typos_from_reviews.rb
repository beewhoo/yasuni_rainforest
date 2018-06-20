class CorrectTyposFromReviews < ActiveRecord::Migration[5.2]


        def change
            rename_column :reviews, :raitng, :rating


        end
end
