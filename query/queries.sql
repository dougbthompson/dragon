
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

select round(sum(eth),4) as eth, round(sum(btc),4) as btc, round(sum(perc),4) as percent, round(sum(dragons),4) as dragons from drgn_audit where exception = 'yes';
+----------+----------+---------+---------------+
| eth      | btc      | percent | dragons       |
+----------+----------+---------+---------------+
| 727.8760 | 124.8444 |  6.9723 | 16623543.4208 |
+----------+----------+---------+---------------+

select round(avg(eth),6), round(avg(perc),6), avg(dragons), sum(dragons) from drgn_audit where dragons < 10000000 and eth > 0.0;
+-------------------+--------------------+--------------------+--------------------+
| round(avg(eth),6) | round(avg(perc),6) | avg(dragons)       | sum(dragons)       |
+-------------------+--------------------+--------------------+--------------------+
|          4.663189 |           0.011101 | 26467.122675540268 | 150889066.37325507 |
+-------------------+--------------------+--------------------+--------------------+

select round(avg(eth),6), round(avg(perc),6), avg(dragons), sum(dragons) from drgn_audit where eth > 0.0;                       
+-------------------+--------------------+--------------------+--------------------+
| round(avg(eth),6) | round(avg(perc),6) | avg(dragons)       | sum(dragons)       |
+-------------------+--------------------+--------------------+--------------------+
|          5.293728 |           0.012446 | 29673.434418319026 | 169197923.05325508 |
+-------------------+--------------------+--------------------+--------------------+

select round(avg(eth),6), round(avg(perc),6), avg(dragons), sum(dragons) from drgn_audit where dragons < 10000000 and eth = 0.0;
+-------------------+--------------------+-------------------+------------------+
| round(avg(eth),6) | round(avg(perc),6) | avg(dragons)      | sum(dragons)     |
+-------------------+--------------------+-------------------+------------------+
|          0.000000 |           0.027033 | 64452.04252595498 | 56266633.1251587 |
+-------------------+--------------------+-------------------+------------------+

select round(avg(eth),6), round(avg(perc),6), avg(dragons), sum(dragons) from drgn_audit where eth = 0.0;    
+-------------------+--------------------+-------------------+-------------------+
| round(avg(eth),6) | round(avg(perc),6) | avg(dragons)      | sum(dragons)      |
+-------------------+--------------------+-------------------+-------------------+
|          0.000000 |           0.033220 | 79203.68111574235 | 69224017.29515882 |
+-------------------+--------------------+-------------------+-------------------+

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

mysql> select eth_address, count(1) as cnt from drgn_audit group by 1 order by 2 desc limit 32;
+--------------------------------------------+-----+
| eth_address                                | cnt |
+--------------------------------------------+-----+
| 0x7ed1e469fcb3ee19c0366d829e291451be638e59 |  16 |
| 0x8d0e16e77d357728d650481a01680fae49f9ccf3 |  15 |
| 0x922b5faa935c8fda9fc001cdeebe85d47a56187f |  14 |
| 0x35ae24f72a8e47e4b80ea1f2f90f4c6f28b80894 |  13 |
| 0x307cc8be4ed730ad39012a7b1dee40a96ac4ec8e |  12 |
| 0xa460a24f606d4abba5041b162e06d42ad6f09157 |  10 |
| 0x425094b077b01a381d08bb2b92651d610d1ee09a |   9 |
| 0x0e42d4c34d0390fe4458ad703a715233e35833c8 |   8 |
| 0x296b436529dc64c03e9ceb77f032a04071d6c057 |   7 |
| 0x0aad17c5050303cb515c37a6f2a63e3f9faa19fc |   7 |
| 0xed5cd45739afe80569eaf58b4c2913a7da7da8f5 |   7 |
| 0x0cc12c667fee7b530a8df4819f1230b778f0ab06 |   6 |
| 0x212863a1304f6a852bbc2cbeb798e828a067323e |   6 |
| 0x161991720d5701aec76db4851bc9bf8b119ba423 |   6 |
| 0x3d7bba2d39a0a339ac76c64ade1eb4e7141f47e7 |   6 |
| 0x6ddc20f18ea49b4d1d276161e0fc91dd1235819c |   6 |
| 0x8f60895fbebbb5017fcbff3cdda397292bf25ba6 |   6 |
| 0xd683676d376b136c7b169f530fb06239fbf8544e |   6 |
| 0x18c9cb09cc4ea21ced828b556f404e82c7e19d98 |   6 |
| 0x2a884ab0466609c9a343575455fafa84ba44364e |   6 |
| 0xfbb1b73c4f0bda4f67dca266ce6ef42f520fbb98 |   6 |
| 0xd9e835e886e4257f775c83f54f332d0a07e9ea83 |   6 |
| 0x12e6376d608d15c35d17358608accd434f8c96d7 |   6 |
| 0x38f6ca78c938b790b7934b07383dbb28a0f0f8a0 |   6 |
| 0xf02b4c5f3828447a3694b39a663c4b9ffb58fad0 |   6 |
| 0x7ad6e05f8961ae99863f9c371d4f4f88f1d5bc08 |   5 |
| 0x8299ea548346ab2a6ee6cb64548249aff2464244 |   5 |
| 0x8267b399605d35ffa815caccd8c81daee9d8c743 |   5 |
| 0x72ed2c87c07e3a405a5aaf4e424ff6d1b56fda58 |   5 |
| 0x6984cb80642436b6eb2cd81efff46ee08f2e9419 |   5 |
| 0x42781671fc6d428a844a35160520ef74d08183d8 |   5 |
| 0xbc5204c8347c24f3d68c2f2b03334c7f4875e14f |   5 |
+--------------------------------------------+-----+

