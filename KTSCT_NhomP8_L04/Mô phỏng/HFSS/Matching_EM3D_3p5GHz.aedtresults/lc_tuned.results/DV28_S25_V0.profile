$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2025
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/25/2026 22:42:51')
			I(1, 'Host', 'DLE')
			I(1, 'Processor', '8')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2025.2.4')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:01:12')
			I(1, 'ComEngine Memory', '76.7 M')
		$end 'TotalInfo'
		GroupOptions=8
		TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Executing From\', \'C:\\\\Program Files\\\\ANSYS Inc\\\\ANSYS Student\\\\v252\\\\AnsysEM\\\\HFSSCOMENGINE.exe\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='HPC'
			$begin 'StartInfo'
				I(1, 'Type', 'Auto')
				I(1, 'MPI Vendor', 'Intel')
				I(1, 'MPI Version', '2021')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions(Memory=8)
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'DLe\', 1, \'Memory\', \'7.73 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 3, false, 1, \'Free Disk Space\', \'187 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 70.6 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:42:51')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:01')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 31708, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 278, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 33968, 'I(1, 2, \'Tetrahedra\', 298, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 20048, 'I(1, 2, \'Tetrahedra\', 301, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 170852, 'I(2, 2, \'Tetrahedra\', 267, false, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 184192, 'I(2, 2, \'Tetrahedra\', 267, false, 1, \'Disk\', \'90.1 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 21848, 'I(1, 2, \'Tetrahedra\', 716, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:42:53')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:45')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 1'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 173720, 'I(2, 2, \'Tetrahedra\', 664, false, 1, \'Disk\', \'6.01 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 185288, 'I(4, 2, \'Tetrahedra\', 664, false, 2, \'P1 Triangles\', 151, false, 2, \'P2 Triangles\', 132, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 192260, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 3472, false, 3, \'Matrix bandwidth\', 15.953, \'%5.1f\', 1, \'Disk\', \'15.2 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 192260, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'248 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75200, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 2'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22044, 'I(1, 2, \'Tetrahedra\', 916, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 174408, 'I(2, 2, \'Tetrahedra\', 859, false, 1, \'Disk\', \'4.2 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 186012, 'I(4, 2, \'Tetrahedra\', 859, false, 2, \'P1 Triangles\', 151, false, 2, \'P2 Triangles\', 132, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 198064, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 4682, false, 3, \'Matrix bandwidth\', 17.2214, \'%5.1f\', 1, \'Disk\', \'18.3 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 198064, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'262 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75376, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 1.10476, \'%.5f\')', 0)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 3'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22252, 'I(1, 2, \'Tetrahedra\', 1175, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 174800, 'I(2, 2, \'Tetrahedra\', 1111, false, 1, \'Disk\', \'4.2 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 187560, 'I(4, 2, \'Tetrahedra\', 1111, false, 2, \'P1 Triangles\', 151, false, 2, \'P2 Triangles\', 132, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 207032, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 6236, false, 3, \'Matrix bandwidth\', 18.1224, \'%5.1f\', 1, \'Disk\', \'24.4 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 207032, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'333 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76740, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.100577, \'%.5f\')', 0)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 4'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22544, 'I(1, 2, \'Tetrahedra\', 1512, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 175740, 'I(2, 2, \'Tetrahedra\', 1440, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 190604, 'I(4, 2, \'Tetrahedra\', 1440, false, 2, \'P1 Triangles\', 151, false, 2, \'P2 Triangles\', 132, false, 1, \'Disk\', \'1 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 215084, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 8294, false, 3, \'Matrix bandwidth\', 18.9178, \'%5.1f\', 1, \'Disk\', \'32.4 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 215084, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'426 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76884, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0437194, \'%.5f\')', 0)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 5'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23072, 'I(1, 2, \'Tetrahedra\', 1949, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 176616, 'I(2, 2, \'Tetrahedra\', 1853, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 195028, 'I(4, 2, \'Tetrahedra\', 1853, false, 2, \'P1 Triangles\', 153, false, 2, \'P2 Triangles\', 134, false, 1, \'Disk\', \'148 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 227872, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 10922, false, 3, \'Matrix bandwidth\', 19.5249, \'%5.1f\', 1, \'Disk\', \'44.3 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 227872, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'542 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76884, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621384')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'10922\', 1, \'Matrixbw\', \'19.818300\', 1, \'Matrixnnz\', \'216455\', 1, \'Rootdim\', \'332\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6282729984.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'958\', 1, \'Factornnz\', \'1440295\', 1, \'Factorestflops\', \'573199981\', 1, \'Fbsestflops\', \'4838457\', 1, \'Rootfactestflops\', \'12200092\', 1, \'Rootfbsestflops\', \'55112\', 1, \'Analysistimesec\', \'0.060063\', 1, \'Analysismemkb\', \'6928.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.092347\', 1, \'Factorizationmentotalkb\', \'34609.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.006993\', 1, \'Fbscputimesec\', \'0.020978\', 1, \'Fbsmemorytotalkb\', \'34260.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'227872\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0282195, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 6'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23688, 'I(1, 2, \'Tetrahedra\', 2507, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178344, 'I(2, 2, \'Tetrahedra\', 2383, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 199456, 'I(4, 2, \'Tetrahedra\', 2383, false, 2, \'P1 Triangles\', 153, false, 2, \'P2 Triangles\', 138, false, 1, \'Disk\', \'149 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 247916, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 14302, false, 3, \'Matrix bandwidth\', 20.0141, \'%5.1f\', 1, \'Disk\', \'57.5 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 247916, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'692 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76912, 'I(1, 0, \'Adaptive Pass 6\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621386')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'14302\', 1, \'Matrixbw\', \'20.249399\', 1, \'Matrixnnz\', \'289607\', 1, \'Rootdim\', \'368\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6279000064.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1268\', 1, \'Factornnz\', \'2129263\', 1, \'Factorestflops\', \'987830682\', 1, \'Fbsestflops\', \'7151925\', 1, \'Rootfactestflops\', \'16614042\', 1, \'Rootfbsestflops\', \'67712\', 1, \'Analysistimesec\', \'0.081986\', 1, \'Analysismemkb\', \'8312.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.110222\', 1, \'Factorizationmentotalkb\', \'50249.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.006129\', 1, \'Fbscputimesec\', \'0.018386\', 1, \'Fbsmemorytotalkb\', \'50632.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'247916\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0202123, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 7'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 24412, 'I(1, 2, \'Tetrahedra\', 3224, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 179760, 'I(2, 2, \'Tetrahedra\', 3073, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 205792, 'I(4, 2, \'Tetrahedra\', 3073, false, 2, \'P1 Triangles\', 161, false, 2, \'P2 Triangles\', 140, false, 1, \'Disk\', \'376 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 273424, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 18666, false, 3, \'Matrix bandwidth\', 20.3761, \'%5.1f\', 1, \'Disk\', \'74.5 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 273424, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'887 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76912, 'I(1, 0, \'Adaptive Pass 7\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621389')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'18666\', 1, \'Matrixbw\', \'20.567400\', 1, \'Matrixnnz\', \'383912\', 1, \'Rootdim\', \'496\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6273679872.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1620\', 1, \'Factornnz\', \'3038301\', 1, \'Factorestflops\', \'1623173902\', 1, \'Fbsestflops\', \'10161920\', 1, \'Rootfactestflops\', \'40677390\', 1, \'Rootfbsestflops\', \'123008\', 1, \'Analysistimesec\', \'0.105809\', 1, \'Analysismemkb\', \'10864.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.151256\', 1, \'Factorizationmentotalkb\', \'72286.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.009921\', 1, \'Fbscputimesec\', \'0.029763\', 1, \'Fbsmemorytotalkb\', \'70676.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'273424\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0150177, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 8'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 24792, 'I(1, 2, \'Tetrahedra\', 3776, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 181076, 'I(2, 2, \'Tetrahedra\', 3598, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 211056, 'I(4, 2, \'Tetrahedra\', 3598, false, 2, \'P1 Triangles\', 161, false, 2, \'P2 Triangles\', 147, false, 1, \'Disk\', \'301 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 290036, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 22048, false, 3, \'Matrix bandwidth\', 20.577, \'%5.1f\', 1, \'Disk\', \'87.7 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 290036, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.01e+03 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76984, 'I(1, 0, \'Adaptive Pass 8\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621392')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'22048\', 1, \'Matrixbw\', \'20.743099\', 1, \'Matrixnnz\', \'457343\', 1, \'Rootdim\', \'512\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6269130240.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1924\', 1, \'Factornnz\', \'3788066\', 1, \'Factorestflops\', \'2175940000\', 1, \'Fbsestflops\', \'12988732\', 1, \'Rootfactestflops\', \'44742105\', 1, \'Rootfbsestflops\', \'131072\', 1, \'Analysistimesec\', \'0.139617\', 1, \'Analysismemkb\', \'13352.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.209126\', 1, \'Factorizationmentotalkb\', \'86681.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.011260\', 1, \'Fbscputimesec\', \'0.033780\', 1, \'Fbsmemorytotalkb\', \'82904.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'290036\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00934618, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 9'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 26348, 'I(1, 2, \'Tetrahedra\', 4864, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 183976, 'I(2, 2, \'Tetrahedra\', 4638, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 221468, 'I(4, 2, \'Tetrahedra\', 4638, false, 2, \'P1 Triangles\', 163, false, 2, \'P2 Triangles\', 153, false, 1, \'Disk\', \'293 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 328048, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 28690, false, 3, \'Matrix bandwidth\', 20.8422, \'%5.1f\', 1, \'Disk\', \'114 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 328048, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'206 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76984, 'I(1, 0, \'Adaptive Pass 9\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621395')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'28690\', 1, \'Matrixbw\', \'20.979900\', 1, \'Matrixnnz\', \'601912\', 1, \'Rootdim\', \'604\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6260219904.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'2471\', 1, \'Factornnz\', \'5183891\', 1, \'Factorestflops\', \'3264130000\', 1, \'Fbsestflops\', \'17640466\', 1, \'Rootfactestflops\', \'73452956\', 1, \'Rootfbsestflops\', \'182408\', 1, \'Analysistimesec\', \'0.231485\', 1, \'Analysismemkb\', \'17044.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.318914\', 1, \'Factorizationmentotalkb\', \'120070.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.018954\', 1, \'Fbscputimesec\', \'0.056864\', 1, \'Fbsmemorytotalkb\', \'112044.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'328048\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.010862, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 10'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 28248, 'I(1, 2, \'Tetrahedra\', 6257, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 185808, 'I(2, 2, \'Tetrahedra\', 5972, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 234388, 'I(4, 2, \'Tetrahedra\', 5972, false, 2, \'P1 Triangles\', 170, false, 2, \'P2 Triangles\', 158, false, 1, \'Disk\', \'527 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 382392, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 37188, false, 3, \'Matrix bandwidth\', 21.0369, \'%5.1f\', 1, \'Disk\', \'147 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 382392, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'261 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76984, 'I(1, 0, \'Adaptive Pass 10\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621398')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'37188\', 1, \'Matrixbw\', \'21.148199\', 1, \'Matrixnnz\', \'786461\', 1, \'Rootdim\', \'660\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6249209856.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'3216\', 1, \'Factornnz\', \'7261544\', 1, \'Factorestflops\', \'5186430000\', 1, \'Fbsestflops\', \'25027436\', 1, \'Rootfactestflops\', \'95835837\', 1, \'Rootfbsestflops\', \'217800\', 1, \'Analysistimesec\', \'0.273942\', 1, \'Analysismemkb\', \'22912.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.404135\', 1, \'Factorizationmentotalkb\', \'165571.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.019148\', 1, \'Fbscputimesec\', \'0.057445\', 1, \'Fbsmemorytotalkb\', \'155428.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'382392\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0191849, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 11'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 30456, 'I(1, 2, \'Tetrahedra\', 8056, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 191068, 'I(2, 2, \'Tetrahedra\', 7669, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 249120, 'I(4, 2, \'Tetrahedra\', 7669, false, 2, \'P1 Triangles\', 178, false, 2, \'P2 Triangles\', 170, false, 1, \'Disk\', \'911 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 2, 0, 442684, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 48068, false, 3, \'Matrix bandwidth\', 21.1844, \'%5.1f\', 1, \'Disk\', \'189 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 442684, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'330 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77104, 'I(1, 0, \'Adaptive Pass 11\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621401')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'48068\', 1, \'Matrixbw\', \'21.275900\', 1, \'Matrixnnz\', \'1022689\', 1, \'Rootdim\', \'706\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6237009920.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'4198\', 1, \'Factornnz\', \'9877676\', 1, \'Factorestflops\', \'7662830000\', 1, \'Fbsestflops\', \'33885067\', 1, \'Rootfactestflops\', \'117302353\', 1, \'Rootfbsestflops\', \'249218\', 1, \'Analysistimesec\', \'0.358763\', 1, \'Analysismemkb\', \'29740.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.562267\', 1, \'Factorizationmentotalkb\', \'223848.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.025752\', 1, \'Fbscputimesec\', \'0.077256\', 1, \'Fbsmemorytotalkb\', \'203400.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'442684\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0207255, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 12'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 33204, 'I(1, 2, \'Tetrahedra\', 10370, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 195700, 'I(2, 2, \'Tetrahedra\', 9866, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 270392, 'I(4, 2, \'Tetrahedra\', 9866, false, 2, \'P1 Triangles\', 185, false, 2, \'P2 Triangles\', 178, false, 1, \'Disk\', \'672 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 3, 0, 535376, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 62116, false, 3, \'Matrix bandwidth\', 21.3113, \'%5.1f\', 1, \'Disk\', \'244 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 535376, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'421 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77192, 'I(1, 0, \'Adaptive Pass 12\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621404')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'62116\', 1, \'Matrixbw\', \'21.389500\', 1, \'Matrixnnz\', \'1328633\', 1, \'Rootdim\', \'810\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6218820096.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'5400\', 1, \'Factornnz\', \'13786144\', 1, \'Factorestflops\', \'12607400000\', 1, \'Fbsestflops\', \'47382419\', 1, \'Rootfactestflops\', \'177151261\', 1, \'Rootfbsestflops\', \'328050\', 1, \'Analysistimesec\', \'0.539562\', 1, \'Analysismemkb\', \'38632.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.875033\', 1, \'Factorizationmentotalkb\', \'305076.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.037235\', 1, \'Fbscputimesec\', \'0.111706\', 1, \'Fbsmemorytotalkb\', \'278036.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'535376\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0126051, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 13'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 35872, 'I(1, 2, \'Tetrahedra\', 13333, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 203452, 'I(2, 2, \'Tetrahedra\', 12709, false, 1, \'Disk\', \'2.44 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 298268, 'I(4, 2, \'Tetrahedra\', 12709, false, 2, \'P1 Triangles\', 193, false, 2, \'P2 Triangles\', 188, false, 1, \'Disk\', \'676 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 4, 0, 644724, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 80310, false, 3, \'Matrix bandwidth\', 21.4212, \'%5.1f\', 1, \'Disk\', \'315 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 644724, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'542 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77192, 'I(1, 0, \'Adaptive Pass 13\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621410')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'80310\', 1, \'Matrixbw\', \'21.486601\', 1, \'Matrixnnz\', \'1725592\', 1, \'Rootdim\', \'910\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6195149824.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'6911\', 1, \'Factornnz\', \'18632293\', 1, \'Factorestflops\', \'18517800000\', 1, \'Fbsestflops\', \'64207365\', 1, \'Rootfactestflops\', \'251195053\', 1, \'Rootfbsestflops\', \'414050\', 1, \'Analysistimesec\', \'0.740759\', 1, \'Analysismemkb\', \'49552.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'1.277250\', 1, \'Factorizationmentotalkb\', \'400015.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.050903\', 1, \'Fbscputimesec\', \'0.152708\', 1, \'Fbsmemorytotalkb\', \'363668.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'644724\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0097717, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 14'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 37988, 'I(1, 2, \'Tetrahedra\', 15923, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 209040, 'I(2, 2, \'Tetrahedra\', 15216, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 322160, 'I(4, 2, \'Tetrahedra\', 15216, false, 2, \'P1 Triangles\', 201, false, 2, \'P2 Triangles\', 194, false, 1, \'Disk\', \'598 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 5, 0, 740844, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 96284, false, 3, \'Matrix bandwidth\', 21.4962, \'%5.1f\', 1, \'Disk\', \'378 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 740844, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'551 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77200, 'I(1, 0, \'Adaptive Pass 14\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621416')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'96284\', 1, \'Matrixbw\', \'21.554701\', 1, \'Matrixnnz\', \'2075371\', 1, \'Rootdim\', \'1080\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6175229952.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8262\', 1, \'Factornnz\', \'23134888\', 1, \'Factorestflops\', \'24879700000\', 1, \'Fbsestflops\', \'79420946\', 1, \'Rootfactestflops\', \'419909719\', 1, \'Rootfbsestflops\', \'583200\', 1, \'Analysistimesec\', \'0.733463\', 1, \'Analysismemkb\', \'60008.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'1.547090\', 1, \'Factorizationmentotalkb\', \'485830.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.121678\', 1, \'Fbscputimesec\', \'0.365035\', 1, \'Fbsmemorytotalkb\', \'439800.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'740844\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00521706, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:43:38')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:25')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'HPC\', \'Enabled\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Solution - Sweep1'
				$begin 'StartInfo'
					I(0, 'Interpolating HFSS Frequency Sweep, Solving Distributed - up to 3 frequencies in parallel')
					I(1, 'Time', '11/25/2026 22:43:38')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:00:25')
				$end 'TotalInfo'
				GroupOptions=4
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'From 2GHz to 5GHz, 301 Frequencies\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 3.5GHz has already been solved\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 5GHz'
					$begin 'StartInfo'
						I(0, 'DLe')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:09')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 234512, 'I(2, 2, \'Tetrahedra\', 15216, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 283520, 'I(4, 2, \'Tetrahedra\', 15216, false, 2, \'P1 Triangles\', 201, false, 2, \'P2 Triangles\', 194, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 5, 0, 427076, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 96284, false, 3, \'Matrix bandwidth\', 21.4962, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'378 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 427076, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621428')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'96284\', 1, \'Matrixbw\', \'21.554701\', 1, \'Matrixnnz\', \'2075371\', 1, \'Rootdim\', \'1080\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1834109952.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8274\', 1, \'Factornnz\', \'22904568\', 1, \'Factorestflops\', \'24227100000\', 1, \'Fbsestflops\', \'79162216\', 1, \'Rootfactestflops\', \'419909719\', 1, \'Rootfbsestflops\', \'583200\', 1, \'Analysistimesec\', \'1.521460\', 1, \'Analysismemkb\', \'60228.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'4.209190\', 1, \'Factorizationmentotalkb\', \'92994.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.008895\', 1, \'Fbscputimesec\', \'0.008895\', 1, \'Fbsmemorytotalkb\', \'99944.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'99944\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 2GHz'
					$begin 'StartInfo'
						I(0, 'DLe')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:09')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 235960, 'I(2, 2, \'Tetrahedra\', 15216, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 285860, 'I(4, 2, \'Tetrahedra\', 15216, false, 2, \'P1 Triangles\', 201, false, 2, \'P2 Triangles\', 194, false, 1, \'Disk\', \'9 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 6, 0, 5, 0, 428264, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 96284, false, 3, \'Matrix bandwidth\', 21.4962, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'378 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 428264, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621429')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'96284\', 1, \'Matrixbw\', \'21.554701\', 1, \'Matrixnnz\', \'2075371\', 1, \'Rootdim\', \'1080\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1832760064.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8274\', 1, \'Factornnz\', \'22904568\', 1, \'Factorestflops\', \'24227100000\', 1, \'Fbsestflops\', \'79162216\', 1, \'Rootfactestflops\', \'419909719\', 1, \'Rootfbsestflops\', \'583200\', 1, \'Analysistimesec\', \'1.551150\', 1, \'Analysismemkb\', \'60280.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'4.403880\', 1, \'Factorizationmentotalkb\', \'92994.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.004794\', 1, \'Fbscputimesec\', \'0.004794\', 1, \'Fbsmemorytotalkb\', \'99660.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'99660\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 2.75GHz'
					$begin 'StartInfo'
						I(0, 'DLe')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:09')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 234800, 'I(2, 2, \'Tetrahedra\', 15216, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 283852, 'I(4, 2, \'Tetrahedra\', 15216, false, 2, \'P1 Triangles\', 201, false, 2, \'P2 Triangles\', 194, false, 1, \'Disk\', \'11 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 6, 0, 5, 0, 428500, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 96284, false, 3, \'Matrix bandwidth\', 21.4962, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'378 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 428500, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.51 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621429')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'96284\', 1, \'Matrixbw\', \'21.554701\', 1, \'Matrixnnz\', \'2075371\', 1, \'Rootdim\', \'1080\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1833769984.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8274\', 1, \'Factornnz\', \'22904568\', 1, \'Factorestflops\', \'24227100000\', 1, \'Fbsestflops\', \'79162216\', 1, \'Rootfactestflops\', \'419909719\', 1, \'Rootfbsestflops\', \'583200\', 1, \'Analysistimesec\', \'1.603020\', 1, \'Analysismemkb\', \'60264.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'4.450940\', 1, \'Factorizationmentotalkb\', \'92994.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.004543\', 1, \'Fbscputimesec\', \'0.004543\', 1, \'Fbsmemorytotalkb\', \'100912.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'100912\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 5GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 2GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 3.5GHz; S Matrix Error = 113.217%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 2.75GHz; S Matrix Error =  11.744%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 4.25GHz'
					$begin 'StartInfo'
						I(0, 'DLe')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:07')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 235308, 'I(2, 2, \'Tetrahedra\', 15216, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 284200, 'I(4, 2, \'Tetrahedra\', 15216, false, 2, \'P1 Triangles\', 201, false, 2, \'P2 Triangles\', 194, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 4, 0, 4, 0, 427904, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 96284, false, 3, \'Matrix bandwidth\', 21.4962, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.6 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 427904, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621440')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'96284\', 1, \'Matrixbw\', \'21.554701\', 1, \'Matrixnnz\', \'2075371\', 1, \'Rootdim\', \'1080\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1862589952.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8274\', 1, \'Factornnz\', \'22904568\', 1, \'Factorestflops\', \'24227100000\', 1, \'Fbsestflops\', \'79162216\', 1, \'Rootfactestflops\', \'419909719\', 1, \'Rootfbsestflops\', \'583200\', 1, \'Analysistimesec\', \'0.161924\', 1, \'Analysismemkb\', \'53593.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'4.012300\', 1, \'Factorizationmentotalkb\', \'92994.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.005216\', 1, \'Fbscputimesec\', \'0.005216\', 1, \'Fbsmemorytotalkb\', \'99808.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'99808\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 3.125GHz'
					$begin 'StartInfo'
						I(0, 'DLe')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:07')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 236136, 'I(2, 2, \'Tetrahedra\', 15216, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 285248, 'I(4, 2, \'Tetrahedra\', 15216, false, 2, \'P1 Triangles\', 201, false, 2, \'P2 Triangles\', 194, false, 1, \'Disk\', \'12 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 4, 0, 4, 0, 428668, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 96284, false, 3, \'Matrix bandwidth\', 21.4962, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.6 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 428668, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.51 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621440')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'96284\', 1, \'Matrixbw\', \'21.554701\', 1, \'Matrixnnz\', \'2075371\', 1, \'Rootdim\', \'1080\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1861539968.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8274\', 1, \'Factornnz\', \'22904568\', 1, \'Factorestflops\', \'24227100000\', 1, \'Fbsestflops\', \'79162216\', 1, \'Rootfactestflops\', \'419909719\', 1, \'Rootfbsestflops\', \'583200\', 1, \'Analysistimesec\', \'0.196704\', 1, \'Analysismemkb\', \'53593.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'3.990230\', 1, \'Factorizationmentotalkb\', \'92994.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.004027\', 1, \'Fbscputimesec\', \'0.004027\', 1, \'Fbsmemorytotalkb\', \'99616.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'99616\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 2.375GHz'
					$begin 'StartInfo'
						I(0, 'DLe')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:07')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 234840, 'I(2, 2, \'Tetrahedra\', 15216, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 283768, 'I(4, 2, \'Tetrahedra\', 15216, false, 2, \'P1 Triangles\', 201, false, 2, \'P2 Triangles\', 194, false, 1, \'Disk\', \'7 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 4, 0, 4, 0, 428228, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 96284, false, 3, \'Matrix bandwidth\', 21.4962, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.6 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 428228, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621441')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'96284\', 1, \'Matrixbw\', \'21.554701\', 1, \'Matrixnnz\', \'2075371\', 1, \'Rootdim\', \'1080\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1863020032.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8274\', 1, \'Factornnz\', \'22904568\', 1, \'Factorestflops\', \'24227100000\', 1, \'Fbsestflops\', \'79162216\', 1, \'Rootfactestflops\', \'419909719\', 1, \'Rootfbsestflops\', \'583200\', 1, \'Analysistimesec\', \'0.232092\', 1, \'Analysismemkb\', \'53593.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'4.009470\', 1, \'Factorizationmentotalkb\', \'92994.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.002956\', 1, \'Fbscputimesec\', \'0.002956\', 1, \'Fbsmemorytotalkb\', \'100632.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'100632\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 4.25GHz; S Matrix Error =   0.332%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 3.125GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 78176, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
				ProfileFootnote('I(1, 0, \'Interpolating sweep converged and is passive\')', 0)
				ProfileFootnote('I(1, 0, \'HFSS: Distributed Interpolating sweep\')', 0)
			$end 'ProfileGroup'
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Simulation Summary'
			$begin 'StartInfo'
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'70.6 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:01\', 1, \'Total Memory\', \'213 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:45\', 1, \'Average memory/process\', \'723 MB\', 1, \'Max memory/process\', \'723 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 3, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:25\', 1, \'Average memory/process\', \'418 MB\', 1, \'Max memory/process\', \'419 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 3, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 15216, false, 2, \'Max matrix size\', 96284, false, 1, \'Matrix bandwidth\', \'21.5\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/25/2026 22:44:04\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
