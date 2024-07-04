# Write your MySQL query statement below
select DISTINCT viewer_id as id from views where author_id=viewer_id ORDER BY author_id;
#there is no id field so we have to create a replica of author_id or viewer_id