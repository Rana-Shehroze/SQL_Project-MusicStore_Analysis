-- who is the most senior employee based on title

select * from employee
ORDER BY levels DESC
LIMIT 1

--- WHICH country the most invoices?

select COUNT(*) as c, billing_country 
from invoice
Group By billing_country
order By C Desc

--- top 3 values of invoice

select total from invoice
ORDER By total DESC
LIMIT 3

-- City with best customers, return the name of city & sum of invoices
--customer_id is same in both the customers and invoice table

select sum(total) as total_invoice, billing_city 
from invoice
group by billing_city
ORDER By total_invoice DESC

--Best costumer? who spend the most moeny?

select * from customer
select * from invoice

Select customer.customer_id, customer.first_name, customer.last_name, sum(invoice.total) as total_invoice
from customer
JOIN invoice On customer.customer_id=invoice.customer_id
GROUP BY customer.customer_id
ORDER by total_invoice DESC
LIMIT 1


-- return email, first_name, last_name & genre of all rock music listeners
--Return list orderly emails starting with a.


select * from customer
select* from invoice_line
Select* from track
select * from genre


select DISTINCT first_name, last_name, email
FROM customer
JOIN INVOICE on customer.customer_id=invoice.customer_id
JOIN Invoice_line on invoice.invoice_Id=invoice_line.invoice_id

WHERE track_id in (

  Select track_id from track
  JOIN genre ON track.genre_id=genre.genre_id
  where genre.name LIKE 'Rock'
  
)
ORDER BY email;

-- Artist with most music "ROCK", return artist name and track count of top 10 rock band

select* from artist




select Distinct name 
fROM artist
JOIN 
