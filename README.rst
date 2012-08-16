gen2bimbam
==========

Converts GEN_ files from SNPTEST or IMPUTE to mean genotype files used with BIMBAM_

.. _GEN: http://www.stats.ox.ac.uk/~marchini/software/gwas/file_format.html#Genotype_File_Format
.. _BIMBAM: http://www.bcm.edu/cnrc/mcmcmc/index.cfm?pmid=18981

Example
-------

To convert data::

 process_gen.bash <path_to_genfiles>/*.gen

Installation
------------

The programs requires:

* Python and a Linux environment. Tested with Python 2.6.6 on CentOS 6.
* The multiprocessing python module. Should be included in most recent python distributions.

Usage
-----

Within the process_gen script the following parameters can be modified:

* POOL_SIZE: The number of processors to use. Each processor uses about 300MB of physical memory (define by buffer_size in the python script).
* TMPDIR: Location to store temporary files.

Author
------
Vince Forgetta, vincenzo.forgetta@mail.mcgill.ca
