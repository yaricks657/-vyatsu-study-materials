ct4pm_inst : ct4pm PORT MAP (
		aclr	 => aclr_sig,
		clock	 => clock_sig,
		cnt_en	 => cnt_en_sig,
		data	 => data_sig,
		sclr	 => sclr_sig,
		sload	 => sload_sig,
		updown	 => updown_sig,
		q	 => q_sig
	);
