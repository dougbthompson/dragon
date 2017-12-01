
select source_type, count(1) from drgn_audit group by 1 order by 2 desc;

select round(avg(eth),6), round(avg(perc),6), avg(dragons), sum(dragons) from drgn_audit where dragons < 10000000;
select round(avg(eth),6), round(avg(perc),6), avg(dragons), sum(dragons) from drgn_audit;

mysql> select * from drgn where eth_address like '0xe021a7ad570d445875c394a774eb43f48c50dbde' \G
*************************** 1. row ***************************
            ts: 11/1/2017 7:59:39 AM
         epoch: 1509548379000
          txid: 0xf3cac63a20fa1d509ab5327339ab847cf39e0c328b1317b2676306272d01927f
   source_type: eth
   eth_address: 0xe021a7ad570d445875c394a774eb43f48c50dbde
  convert_rate: 0.04524217
     btc_value: 0.18096868
           btc: 0
           eth: 4
          perc: 0.008195867441303772
       dragons: 19540.74618207035
     exception: n/a
exception_type: n/a
1 row in set (0.01 sec)

