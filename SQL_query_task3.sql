select train_id,train_name,source_station,to_char(DEPART_TIME,'HH:MI AM')DEPART_TIME,DESTINATION_STATION,to_char(ARRIVAL_TIME,'HH:MI AM')ARRIVAL_TIME from train order by train_id ;

select train_name,source_station,to_char(DEPART_TIME,'HH:MI AM')DEPART_TIME,DESTINATION_STATION,to_char(ARRIVAL_TIME,'HH:MI AM')ARRIVAL_TIME from train where SOURCE_STATION='kolkatta' and destination_station='Varanasi_Junction'  order by train_id  ; 

select tk.TICKET_ID,tr.TRAIN_NAME,ps.PASSENGER_ID,tk.SOURCE,tk.DESTINATION,tk.class,tk.BOOKING_DATE  from ticket tk,train tr,passenger ps where tr.train_id=tk.train_id and ps.passenger_id=tk.passenger_id and  booking_date between to_date('14-04-2025','DD-MM-YYYY') and to_date('21-04-2025','DD-MM-YYYY')  ;

select * from passenger where PASSENGER_NAME like 'Ar%' ;

select * from passenger where PASSENGER_NAME like '_r%' ;

select * from passenger where PASSENGER_NAME like '%a' ;

select * from passenger where PASSENGER_NAME like '%a%a%' ; 
 
select * from passenger where PASSENGER_NAME like '%a' or PASSENGER_NAME  like  '%e' ; 

select * from ticket where booking_date between to_date('14-04-2025','DD-MM-YYYY') and to_date('21-04-2025','DD-MM-YYYY')  ; 

select * from station where ROWNUM<=3
 -- (Limit is equivalent to rownum . Limit keyword isn't used in oracle database).