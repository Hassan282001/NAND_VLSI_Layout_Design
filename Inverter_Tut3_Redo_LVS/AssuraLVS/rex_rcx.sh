set -e
set -x

rex -dp_comm_string 1,soe-2531-25-lin.cfs.uoguelph.ca,34983 -V -m -pd -I# -tech /CMC_STC2/kits/cadence/GPDK045/gpdk045_v_6_0/qrc/typical -map p2elayermapfile -wee p2elayermapfile -N NET -e2 -Ply np_rpoly_conn -er np_rmetal1_conn,metal1_conn.den -rP res.mod -mp mprexaRQyioq np_rmetal1_conn::metal1_conn_cut - rcont_poly,1,T rcont_pdiff_metal1_conn_pdiff_conn,1,t rcont_ndiff_metal1_conn_ndiff_conn,1,t - L1T0,1,I

rex -dp_comm_string 2,soe-2531-25-lin.cfs.uoguelph.ca,34983 -V -m -pd -I# -tech /CMC_STC2/kits/cadence/GPDK045/gpdk045_v_6_0/qrc/typical -map p2elayermapfile -wee p2elayermapfile -N NET -e2 -Ply np_rpoly_conn -er np_rmetal1_conn,metal1_conn.den -rP res.mod -mp mprexasB26vo np_rpoly_conn::poly_conn_cut - _pmos1v_MOS_10_mgvia,1,z _nmos1v_MOS_2_mgvia,1,z rcont_poly,1,x

rexmerge -V -N NET -n mprexasB26vo,mprexaRQyioq -b np_rpoly_conn::Rnp_rpoly_conn.dev2,np_rmetal1_conn::Rnp_rmetal1_conn.dev2 -l ,L1T0 np_rpoly_conn.res,np_rmetal1_conn.res

