/* Quartus Prime Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Ign)
		Device PartName(SOCVHPS) MfrSpec(OpMask(0));
	P ActionCode(Ign)
		Device PartName(5CSEMA5F31) MfrSpec(OpMask(0) FullPath("/home/elias/Documentos/TEC/semestre_2_2021/taller_de_diseno_digital/proyectos_fpga/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/output_files/Problema1.sof"));
	P ActionCode(Cfg)
		Device PartName(5CSEMA5F31) Path("/home/elias/Documentos/TEC/semestre_2_2021/taller_de_diseno_digital/proyectos_fpga/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/output_files/") File("Problema1.sof") MfrSpec(OpMask(1));
	P ActionCode(Ign)
		Device PartName(5CSEMA5) MfrSpec(OpMask(0));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
