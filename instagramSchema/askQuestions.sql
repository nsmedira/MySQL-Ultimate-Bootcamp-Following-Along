# find the 5 oldest users
SELECT username, timestamp_creation
FROM users
ORDER BY timestamp_creation
LIMIT 5 ;

# what day of the week do most users register on
SELECT DAYNAME(timestamp_creation), COUNT(*)
FROM users
GROUP BY DAYNAME(timestamp_creation)
ORDER BY COUNT(*) DESC
LIMIT 1 ;

# find the users who have never posted a photo
SELECT photos.id_user, COUNT(*)
FROM photos
RIGHT JOIN users
    ON photos.id_user = users.id
WHERE photos.id_user IS NULL
GROUP BY photos.id_user ;

# what user has the most likes on a single photo
SELECT users.username, COUNT(*) AS 'total'
FROM likes
JOIN photos
    ON likes.id_photo = photos.id
JOIN users
    ON photos.id_user = users.id
GROUP BY id_photo
ORDER BY total DESC
LIMIT 1 ;

# how many times does the average user post
SELECT COUNT(photos.id) / COUNT(DISTINCT users.id)
FROM users
LEFT JOIN photos
    ON photos.id_user = users.id ;
    
# what are the top 5 most commonly used hashtags?
SELECT hashtags.content, COUNT(*)
FROM photoTags
JOIN hashtags
    ON photoTags.id_hashtag = hashtags.id
GROUP BY id_hashtag
ORDER BY COUNT(*) DESC
LIMIT 5 ;

# find users who have liked every single photo on the site
SELECT username, 
       Count(*) AS num_likes 
FROM   users 
       INNER JOIN likes 
               ON users.id = likes.id_user 
GROUP  BY likes.id_user 
HAVING num_likes = (
    SELECT Count(*) 
    FROM photos
);