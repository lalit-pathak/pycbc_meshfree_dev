for channel in A E T
do
    strain_file=${channel}_TDI_v2.gwf
    test -f ${strain_file} && continue
    curl -O --silent https://zenodo.org/record/7255549/files/${strain_file}

    psd_file=${channel}_psd.txt
    test -f ${psd_file} && continue
    curl -O --silent https://zenodo.org/record/7255549/files/${psd_file}
done

params_file=MBHB_params_v2_LISA_frame.pkl 
test -f ${params_file} && continue
curl -O --silent https://zenodo.org/record/7255549/files/${params_file}
