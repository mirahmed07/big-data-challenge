# Big Data Challenge

# An ETL Project with AWS RDS and Big Data Analysis in Google Colab

*Analyze whether reviews from Amazon's Vine program are trustworthy*

<img src="https://thewanderingclouddotblog.files.wordpress.com/2020/07/amazonvine.png" width=600>

Many of Amazon's shoppers depend on product reviews to make a purchase. Amazon makes these datasets publicly available. However, they are quite large and can exceed the capacity of local machines to handle. One dataset alone contains over 1.5 million rows; with over 40 datasets, this can be quite taxing on the average local computer.

The first goal for this assignment will be to perform the ETL process completely in the cloud (Google Colab) and upload a DataFrame to an RDS instance. The second goal will be to use PySpark or SQL to perform a statistical analysis of selected data.

## Files Index

Following files are attached:

1. <a href="https://github.com/mirahmed07/big-data-challenge/blob/master/level-1/Home_Improvement.ipynb">Home_Improvement.ipynb</a>: Level 1 ETL with **Home Improvement**

2. <a href="https://github.com/mirahmed07/big-data-challenge/blob/master/level-1/musical_instruments.ipynb">musical_instruments.ipynb</a>: Level 1 ETL with **Musical Instrument**

3. <a href="https://github.com/mirahmed07/big-data-challenge/blob/master/level-2/Vine_analysis.ipynb">Vine_analysis.ipynb</a>: Big Data Analysis on Vine Reviews


# Conclusion

* We can see that the percentage of 5-star reviews in Vine is not close to non-Vine reviews (43.396% to 32.802%). Which means that vine reviews are biased not accurate.

* Although the number of Vine reviews is pretty low, so far it can still represent the product. However, the average rating from Vine customers is 4.05  with std deviation of 1.12, whereas the average rating from Vine customers is 3.48 with std deviation of 1.44.

* The average rating for vines varies from category to category. For example, average rating for musical instruments is way higher than home improvement products. So be careful when purchasing musical instruments as the vine reviews might skew your view.

* I believe the Vine customers tend to give higher ratings and pretty focusing on the higher ratings too. So reviews from Vine customers are not that trustworthy for me.
