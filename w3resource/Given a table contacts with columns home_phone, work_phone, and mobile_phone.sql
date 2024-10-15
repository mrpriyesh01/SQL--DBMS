Given a table contacts with columns home_phone, work_phone, and mobile_phone, 
write a query to return the contact's preferred phone number. If mobile_phone is NULL, use work_phone, 
and if that is also NULL, use home_phone.


code=
SELECT contact_id, COALESCE(mobile_phone, work_phone, home_phone) AS preferred_phone
FROM contacts;
