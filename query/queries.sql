
select source_type, count(1) from drgn_audit group by 1 order by 2 desc;

select round(avg(eth),6), round(avg(perc),6), avg(dragons), sum(dragons) from drgn_audit where dragons < 10000000;
select round(avg(eth),6), round(avg(perc),6), avg(dragons), sum(dragons) from drgn_audit;

