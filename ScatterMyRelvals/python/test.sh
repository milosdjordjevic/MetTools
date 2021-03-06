#!/bin/sh
python writeAllEventInformation.py --inputDir=/eos/cms/store/relval/CMSSW_7_4_0_pre2/RelValTTbar_13/GEN-SIM-RECO/MCRUN2_73_V7-v1/00000 --release=CMSSW_7_4_0_pre2 --outputFile=$PWD/CMSSW_7_4_0_pre2_RelValTTbar_13.root --overWrite 
python writeAllEventInformation.py --inputDir=/eos/cms/store/relval/CMSSW_7_4_0_pre3/RelValTTbar_13/GEN-SIM-RECO/MCRUN2_73_V7-v1/00000 --release=CMSSW_7_4_0_pre3 --outputFile=$PWD/CMSSW_7_4_0_pre3_RelValTTbar_13.root --overWrite 
python scatterPlots.py --percentile=0.999 --plotDir=$PWD/test --xAxis="740p2:$PWD/CMSSW_7_4_0_pre2_RelValTTbar_13.root" --yAxis="740p3:$PWD/CMSSW_7_4_0_pre3_RelValTTbar_13.root"
