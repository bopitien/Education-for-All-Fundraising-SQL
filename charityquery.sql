-- a) How much is the total donation?

SELECT SUM(donation) as TotalDonations
FROM donation_data


-- b) What is the total donation by gender?

SELECT gender, SUM(donation) as TotalDonations
FROM donation_data
GROUP BY gender
ORDER BY TotalDonations





-- c) Show the total donation and number of donations 
-- by gender


SELECT gender, SUM(donation) as TotalDonations , COUNT(donation) as Noofdonations
FROM donation_data
GROUP BY gender
ORDER BY 2,3 DESC


-- d) Total donation made by frequency of donation

SELECT b.donation_frequency, SUM(a.donation) as TotalDonations
FROM donation_data a
JOIN donor_data b
ON a.id = b.id
GROUP BY b.donation_frequency




-- e) Total donation and number of donation by Job field

SELECT job_field, SUM(donation) as TotalDonations , COUNT(donation) as Noofdonations
FROM donation_data
GROUP BY job_field
ORDER BY 2,3 DESC


-- f) Total donation and number of donations above 
-- $200

SELECT SUM(donation) as TotalDonations , COUNT(donation) as noofdonations
FROM donation_data
WHERE donation > 200



-- g) Total donation and number of donations below 
-- $200

SELECT SUM(donation) as TotalDonations , COUNT(donation) as noofdonations
FROM donation_data
WHERE donation < 200


-- h) Which top 10 states contributes the highest donations

SELECT state, SUM(donation) as TotalDonations
FROM donation_data
GROUP BY state
ORDER BY TotalDonations DESC
LIMIT 10



-- i) Which top 10 states contributes the least donations


SELECT state, SUM(donation) as TotalDonations
FROM donation_data
GROUP BY state
ORDER BY TotalDonations ASC
LIMIT 10


-- j) What are the top 10 cars driven by the highest donors

SELECT b.car, SUM(a.donation) as TotalDonations
FROM donation_data a
JOIN donor_data b
ON a.id = b.id
GROUP BY b.car
ORDER BY TotalDonations DESC
LIMIT 10

-- j) What are the top 10 movie genre by the highest donors


SELECT b.movie_genre, SUM(a.donation) as TotalDonations , COUNT(donation) as noofdonations
FROM donation_data a
JOIN donor_data b
ON a.id = b.id
GROUP BY b.movie_genre
ORDER BY TotalDonations DESC
LIMIT 10