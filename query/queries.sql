
select source_type, count(1) from drgn_audit group by 1 order by 2 desc;

select round(avg(eth),6), round(avg(perc),6), avg(dragons), sum(dragons) from drgn_audit where dragons < 10000000;
+-------------------+--------------------+--------------------+--------------------+
| round(avg(eth),6) | round(avg(perc),6) | avg(dragons)       | sum(dragons)       |
+-------------------+--------------------+--------------------+--------------------+
|          4.043936 |           0.013217 | 31511.362868636013 | 207155699.49841315 |
+-------------------+--------------------+--------------------+--------------------+

select round(avg(eth),6), round(avg(perc),6), avg(dragons), sum(dragons) from drgn_audit;
+-------------------+--------------------+-------------------+-------------------+
| round(avg(eth),6) | round(avg(perc),6) | avg(dragons)      | sum(dragons)      |
+-------------------+--------------------+-------------------+-------------------+
|          4.590152 |           0.015207 | 36256.37779020882 | 238421940.3484132 |
+-------------------+--------------------+-------------------+-------------------+

mysql> select round(sum(eth),4) as eth, round(sum(btc),4) as btc, round(sum(perc),4) as percent, round(sum(dragons),4) as dragons from drgn_audit where exception = 'yes';
+----------+----------+---------+---------------+
| eth      | btc      | percent | dragons       |
+----------+----------+---------+---------------+
| 727.8760 | 124.8444 |  6.9723 | 16623543.4208 |
+----------+----------+---------+---------------+

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

