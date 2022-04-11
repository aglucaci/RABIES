#!/bin/bash

#FastTree Version 2.1.11 Double precision (No SSE3), OpenMP (8 threads)

FastTree -gtr -nt hyphy_clean_Dog_Rables_Lyssavirus_G.fas > hyphy_clean_Dog_Rables_Lyssavirus_G.fas.fasttree.nwk
FastTree -gtr -nt hyphy_clean_Dog_Rables_Lyssavirus_N.fas > hyphy_clean_Dog_Rables_Lyssavirus_N.fas.fasttree.nwk
FastTree -gtr -nt hyphy_clean_Bat_Rables_Lyssavirus_N.fas > hyphy_clean_Bat_Rables_Lyssavirus_N.fas.fasttree.nwk


 cat hyphy_clean_Dog_Rables_Lyssavirus_G.fas hyphy_clean_Dog_Rables_Lyssavirus_G.fas.fasttree.nwk > hyphy_clean_Dog_Rables_Lyssavirus_G.fna
 cat hyphy_clean_Dog_Rables_Lyssavirus_N.fas hyphy_clean_Dog_Rables_Lyssavirus_N.fas.fasttree.nwk > hyphy_clean_Dog_Rables_Lyssavirus_N.fna
 cat hyphy_clean_Bat_Rables_Lyssavirus_N.fas hyphy_clean_Bat_Rables_Lyssavirus_N.fas.fasttree.nwk > hyphy_clean_Bat_Rables_Lyssavirus_N.fna

# End of file

