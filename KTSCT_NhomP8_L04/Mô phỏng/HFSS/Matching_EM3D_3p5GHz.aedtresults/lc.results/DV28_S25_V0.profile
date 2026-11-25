$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2025
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/25/2026 22:41:23')
			I(1, 'Host', 'DLE')
			I(1, 'Processor', '8')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2025.2.4')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:01:21')
			I(1, 'ComEngine Memory', '77 M')
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
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 70.8 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:41:23')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:01')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 31744, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 278, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 33996, 'I(1, 2, \'Tetrahedra\', 298, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 20124, 'I(1, 2, \'Tetrahedra\', 301, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 170740, 'I(2, 2, \'Tetrahedra\', 267, false, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 184352, 'I(2, 2, \'Tetrahedra\', 267, false, 1, \'Disk\', \'90.1 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 21936, 'I(1, 2, \'Tetrahedra\', 716, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:41:25')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:53')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 173752, 'I(2, 2, \'Tetrahedra\', 664, false, 1, \'Disk\', \'6.01 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 185612, 'I(4, 2, \'Tetrahedra\', 664, false, 2, \'P1 Triangles\', 151, false, 2, \'P2 Triangles\', 132, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 191852, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 3472, false, 3, \'Matrix bandwidth\', 15.953, \'%5.1f\', 1, \'Disk\', \'15.2 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 191852, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'248 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75316, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22000, 'I(1, 2, \'Tetrahedra\', 919, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 174304, 'I(2, 2, \'Tetrahedra\', 863, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 186184, 'I(4, 2, \'Tetrahedra\', 863, false, 2, \'P1 Triangles\', 151, false, 2, \'P2 Triangles\', 132, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 196432, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 4688, false, 3, \'Matrix bandwidth\', 17.1534, \'%5.1f\', 1, \'Disk\', \'18.3 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 196432, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'55.1 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75376, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 1.24143, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22304, 'I(1, 2, \'Tetrahedra\', 1181, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 174892, 'I(2, 2, \'Tetrahedra\', 1118, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 187392, 'I(4, 2, \'Tetrahedra\', 1118, false, 2, \'P1 Triangles\', 151, false, 2, \'P2 Triangles\', 132, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 205312, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 6274, false, 3, \'Matrix bandwidth\', 18.1091, \'%5.1f\', 1, \'Disk\', \'24.5 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 205312, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'65 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76856, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.188946, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22600, 'I(1, 2, \'Tetrahedra\', 1521, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 176004, 'I(2, 2, \'Tetrahedra\', 1447, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 190712, 'I(4, 2, \'Tetrahedra\', 1447, false, 2, \'P1 Triangles\', 151, false, 2, \'P2 Triangles\', 132, false, 1, \'Disk\', \'1 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 214808, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 8320, false, 3, \'Matrix bandwidth\', 18.8849, \'%5.1f\', 1, \'Disk\', \'32.5 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 214808, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'429 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76900, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0912239, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23128, 'I(1, 2, \'Tetrahedra\', 1959, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 176924, 'I(2, 2, \'Tetrahedra\', 1867, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 195156, 'I(4, 2, \'Tetrahedra\', 1867, false, 2, \'P1 Triangles\', 151, false, 2, \'P2 Triangles\', 134, false, 1, \'Disk\', \'73 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 232124, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 10996, false, 3, \'Matrix bandwidth\', 19.5171, \'%5.1f\', 1, \'Disk\', \'44.5 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 232124, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'547 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77076, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621296')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'10996\', 1, \'Matrixbw\', \'19.792700\', 1, \'Matrixnnz\', \'217640\', 1, \'Rootdim\', \'348\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6303640064.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'970\', 1, \'Factornnz\', \'1515498\', 1, \'Factorestflops\', \'663215309\', 1, \'Fbsestflops\', \'5003357\', 1, \'Rootfactestflops\', \'14050102\', 1, \'Rootfbsestflops\', \'60552\', 1, \'Analysistimesec\', \'0.059435\', 1, \'Analysismemkb\', \'6960.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.069615\', 1, \'Factorizationmentotalkb\', \'39797.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.004346\', 1, \'Fbscputimesec\', \'0.013037\', 1, \'Fbsmemorytotalkb\', \'38420.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'232124\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0577913, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23792, 'I(1, 2, \'Tetrahedra\', 2528, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178428, 'I(2, 2, \'Tetrahedra\', 2392, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 199640, 'I(4, 2, \'Tetrahedra\', 2392, false, 2, \'P1 Triangles\', 153, false, 2, \'P2 Triangles\', 138, false, 1, \'Disk\', \'226 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 249252, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 14374, false, 3, \'Matrix bandwidth\', 19.9698, \'%5.1f\', 1, \'Disk\', \'57.7 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 249252, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'694 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77216, 'I(1, 0, \'Adaptive Pass 6\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621299')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'14374\', 1, \'Matrixbw\', \'20.197399\', 1, \'Matrixnnz\', \'290317\', 1, \'Rootdim\', \'432\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6299890176.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1257\', 1, \'Factornnz\', \'2140413\', 1, \'Factorestflops\', \'1017164282\', 1, \'Fbsestflops\', \'7256344\', 1, \'Rootfactestflops\', \'26876354\', 1, \'Rootfbsestflops\', \'93312\', 1, \'Analysistimesec\', \'0.074573\', 1, \'Analysismemkb\', \'8432.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.102907\', 1, \'Factorizationmentotalkb\', \'52486.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.005647\', 1, \'Fbscputimesec\', \'0.016940\', 1, \'Fbsmemorytotalkb\', \'51968.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'249252\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0347155, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 24452, 'I(1, 2, \'Tetrahedra\', 3247, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 179772, 'I(2, 2, \'Tetrahedra\', 3090, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 206040, 'I(4, 2, \'Tetrahedra\', 3090, false, 2, \'P1 Triangles\', 154, false, 2, \'P2 Triangles\', 140, false, 1, \'Disk\', \'149 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 272632, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 18842, false, 3, \'Matrix bandwidth\', 20.4119, \'%5.1f\', 1, \'Disk\', \'75.2 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 272632, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'145 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77216, 'I(1, 0, \'Adaptive Pass 7\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621302')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'18842\', 1, \'Matrixbw\', \'20.592699\', 1, \'Matrixnnz\', \'388007\', 1, \'Rootdim\', \'468\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6294459904.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1635\', 1, \'Factornnz\', \'3062567\', 1, \'Factorestflops\', \'1682172137\', 1, \'Fbsestflops\', \'10449522\', 1, \'Rootfactestflops\', \'34170302\', 1, \'Rootfbsestflops\', \'109512\', 1, \'Analysistimesec\', \'0.114777\', 1, \'Analysismemkb\', \'11364.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.202136\', 1, \'Factorizationmentotalkb\', \'73298.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.011662\', 1, \'Fbscputimesec\', \'0.034986\', 1, \'Fbsmemorytotalkb\', \'69952.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'272632\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0212315, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 25516, 'I(1, 2, \'Tetrahedra\', 4184, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 182004, 'I(2, 2, \'Tetrahedra\', 3982, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 214412, 'I(4, 2, \'Tetrahedra\', 3982, false, 2, \'P1 Triangles\', 154, false, 2, \'P2 Triangles\', 145, false, 1, \'Disk\', \'224 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 310884, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 24544, false, 3, \'Matrix bandwidth\', 20.7199, \'%5.1f\', 1, \'Disk\', \'97.5 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 310884, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'180 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77220, 'I(1, 0, \'Adaptive Pass 8\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621305')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'24544\', 1, \'Matrixbw\', \'20.865499\', 1, \'Matrixnnz\', \'512124\', 1, \'Rootdim\', \'564\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6287090176.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'2152\', 1, \'Factornnz\', \'4420288\', 1, \'Factorestflops\', \'2751870000\', 1, \'Fbsestflops\', \'14971604\', 1, \'Rootfactestflops\', \'59805113\', 1, \'Rootfbsestflops\', \'159048\', 1, \'Analysistimesec\', \'0.164718\', 1, \'Analysismemkb\', \'14948.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.276040\', 1, \'Factorizationmentotalkb\', \'106055.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.017688\', 1, \'Fbscputimesec\', \'0.053065\', 1, \'Fbsmemorytotalkb\', \'100804.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'310884\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0247036, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 27356, 'I(1, 2, \'Tetrahedra\', 5381, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 185116, 'I(2, 2, \'Tetrahedra\', 5117, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 226404, 'I(4, 2, \'Tetrahedra\', 5117, false, 2, \'P1 Triangles\', 160, false, 2, \'P2 Triangles\', 155, false, 1, \'Disk\', \'603 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 351976, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 31766, false, 3, \'Matrix bandwidth\', 20.9045, \'%5.1f\', 1, \'Disk\', \'126 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 351976, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'226 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77228, 'I(1, 0, \'Adaptive Pass 9\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621308')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'31766\', 1, \'Matrixbw\', \'21.026199\', 1, \'Matrixnnz\', \'667919\', 1, \'Rootdim\', \'648\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6277349888.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'2752\', 1, \'Factornnz\', \'6106369\', 1, \'Factorestflops\', \'4260550000\', 1, \'Fbsestflops\', \'20908884\', 1, \'Rootfactestflops\', \'90702720\', 1, \'Rootfbsestflops\', \'209952\', 1, \'Analysistimesec\', \'0.257136\', 1, \'Analysismemkb\', \'19248.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.542044\', 1, \'Factorizationmentotalkb\', \'138665.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.035625\', 1, \'Fbscputimesec\', \'0.106875\', 1, \'Fbsmemorytotalkb\', \'132264.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'351976\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0215074, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 28904, 'I(1, 2, \'Tetrahedra\', 6924, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 188820, 'I(2, 2, \'Tetrahedra\', 6597, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 238488, 'I(4, 2, \'Tetrahedra\', 6597, false, 2, \'P1 Triangles\', 169, false, 2, \'P2 Triangles\', 159, false, 1, \'Disk\', \'528 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 2, 0, 403012, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 41202, false, 3, \'Matrix bandwidth\', 21.0834, \'%5.1f\', 1, \'Disk\', \'163 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 403012, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'288 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77276, 'I(1, 0, \'Adaptive Pass 10\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621311')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'41202\', 1, \'Matrixbw\', \'21.184601\', 1, \'Matrixnnz\', \'872849\', 1, \'Rootdim\', \'708\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6266880000.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'3565\', 1, \'Factornnz\', \'8193843\', 1, \'Factorestflops\', \'6139740000\', 1, \'Fbsestflops\', \'27843463\', 1, \'Rootfactestflops\', \'118302220\', 1, \'Rootfbsestflops\', \'250632\', 1, \'Analysistimesec\', \'0.341736\', 1, \'Analysismemkb\', \'25384.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.553526\', 1, \'Factorizationmentotalkb\', \'185433.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.043336\', 1, \'Fbscputimesec\', \'0.130007\', 1, \'Fbsmemorytotalkb\', \'172912.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'403012\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0193389, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 30968, 'I(1, 2, \'Tetrahedra\', 8905, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 192588, 'I(2, 2, \'Tetrahedra\', 8492, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 257144, 'I(4, 2, \'Tetrahedra\', 8492, false, 2, \'P1 Triangles\', 177, false, 2, \'P2 Triangles\', 166, false, 1, \'Disk\', \'676 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 2, 0, 481760, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 53338, false, 3, \'Matrix bandwidth\', 21.2442, \'%5.1f\', 1, \'Disk\', \'210 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 481760, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'365 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77280, 'I(1, 0, \'Adaptive Pass 11\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621315')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'53338\', 1, \'Matrixbw\', \'21.328501\', 1, \'Matrixnnz\', \'1137621\', 1, \'Rootdim\', \'774\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6250950144.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'4624\', 1, \'Factornnz\', \'11569537\', 1, \'Factorestflops\', \'9978610000\', 1, \'Fbsestflops\', \'39858149\', 1, \'Rootfactestflops\', \'154565710\', 1, \'Rootfbsestflops\', \'299538\', 1, \'Analysistimesec\', \'0.419715\', 1, \'Analysismemkb\', \'32592.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.699518\', 1, \'Factorizationmentotalkb\', \'248989.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.041322\', 1, \'Fbscputimesec\', \'0.123966\', 1, \'Fbsmemorytotalkb\', \'235668.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'481760\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0190769, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 34324, 'I(1, 2, \'Tetrahedra\', 11458, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 198300, 'I(2, 2, \'Tetrahedra\', 10926, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 280104, 'I(4, 2, \'Tetrahedra\', 10926, false, 2, \'P1 Triangles\', 183, false, 2, \'P2 Triangles\', 179, false, 1, \'Disk\', \'754 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 3, 0, 582336, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 68880, false, 3, \'Matrix bandwidth\', 21.3599, \'%5.1f\', 1, \'Disk\', \'271 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 582336, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'465 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77304, 'I(1, 0, \'Adaptive Pass 12\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621321')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'68880\', 1, \'Matrixbw\', \'21.431499\', 1, \'Matrixnnz\', \'1476200\', 1, \'Rootdim\', \'870\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6231540224.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'5965\', 1, \'Factornnz\', \'15716246\', 1, \'Factorestflops\', \'15118000000\', 1, \'Fbsestflops\', \'53949685\', 1, \'Rootfactestflops\', \'219505628\', 1, \'Rootfbsestflops\', \'378450\', 1, \'Analysistimesec\', \'0.699070\', 1, \'Analysismemkb\', \'42836.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'1.056720\', 1, \'Factorizationmentotalkb\', \'336832.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.041376\', 1, \'Fbscputimesec\', \'0.124130\', 1, \'Fbsmemorytotalkb\', \'316752.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'582336\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0199235, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 35152, 'I(1, 2, \'Tetrahedra\', 13273, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 201944, 'I(2, 2, \'Tetrahedra\', 12693, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 297664, 'I(4, 2, \'Tetrahedra\', 12693, false, 2, \'P1 Triangles\', 191, false, 2, \'P2 Triangles\', 187, false, 1, \'Disk\', \'599 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 4, 0, 643384, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 80164, false, 3, \'Matrix bandwidth\', 21.4426, \'%5.1f\', 1, \'Disk\', \'315 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 643384, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'425 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77404, 'I(1, 0, \'Adaptive Pass 13\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621326')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'80164\', 1, \'Matrixbw\', \'21.508200\', 1, \'Matrixnnz\', \'1724184\', 1, \'Rootdim\', \'876\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6216399872.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'6960\', 1, \'Factornnz\', \'18742286\', 1, \'Factorestflops\', \'18634600000\', 1, \'Fbsestflops\', \'64728643\', 1, \'Rootfactestflops\', \'224078240\', 1, \'Rootfbsestflops\', \'383688\', 1, \'Analysistimesec\', \'0.608276\', 1, \'Analysismemkb\', \'49756.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'1.235860\', 1, \'Factorizationmentotalkb\', \'402545.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.046091\', 1, \'Fbscputimesec\', \'0.138272\', 1, \'Fbsmemorytotalkb\', \'362940.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'643384\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00753437, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 37764, 'I(1, 2, \'Tetrahedra\', 15694, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 206960, 'I(2, 2, \'Tetrahedra\', 15025, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 318844, 'I(4, 2, \'Tetrahedra\', 15025, false, 2, \'P1 Triangles\', 202, false, 2, \'P2 Triangles\', 191, false, 1, \'Disk\', \'679 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 5, 0, 749424, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 95076, false, 3, \'Matrix bandwidth\', 21.5158, \'%5.1f\', 1, \'Disk\', \'373 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 749424, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'528 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77404, 'I(1, 0, \'Adaptive Pass 14\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621331')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'95076\', 1, \'Matrixbw\', \'21.573000\', 1, \'Matrixnnz\', \'2051071\', 1, \'Rootdim\', \'956\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6198720000.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8217\', 1, \'Factornnz\', \'23161690\', 1, \'Factorestflops\', \'24563600000\', 1, \'Fbsestflops\', \'80020886\', 1, \'Rootfactestflops\', \'291245925\', 1, \'Rootfbsestflops\', \'456968\', 1, \'Analysistimesec\', \'0.808038\', 1, \'Analysismemkb\', \'59236.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'1.628460\', 1, \'Factorizationmentotalkb\', \'493835.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.074728\', 1, \'Fbscputimesec\', \'0.224185\', 1, \'Fbsmemorytotalkb\', \'451328.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'749424\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0107875, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 15'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.5GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 42012, 'I(1, 2, \'Tetrahedra\', 19378, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 216436, 'I(2, 2, \'Tetrahedra\', 18570, false, 1, \'Disk\', \'5.34 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 2, 0, 352904, 'I(4, 2, \'Tetrahedra\', 18570, false, 2, \'P1 Triangles\', 208, false, 2, \'P2 Triangles\', 198, false, 1, \'Disk\', \'599 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 3, 0, 8, 0, 880948, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 117752, false, 3, \'Matrix bandwidth\', 21.5856, \'%5.1f\', 1, \'Disk\', \'462 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 880948, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'722 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77404, 'I(1, 0, \'Adaptive Pass 15\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621338')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'117752\', 1, \'Matrixbw\', \'21.635000\', 1, \'Matrixnnz\', \'2547567\', 1, \'Rootdim\', \'1040\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6170910208.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'10099\', 1, \'Factornnz\', \'29110480\', 1, \'Factorestflops\', \'32811400000\', 1, \'Fbsestflops\', \'100427656\', 1, \'Rootfactestflops\', \'374960001\', 1, \'Rootfbsestflops\', \'540800\', 1, \'Analysistimesec\', \'0.951795\', 1, \'Analysismemkb\', \'73936.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'2.249760\', 1, \'Factorizationmentotalkb\', \'599786.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.114305\', 1, \'Fbscputimesec\', \'0.342916\', 1, \'Fbsmemorytotalkb\', \'554892.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'880948\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00958746, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'The last 1 adaptive passes converged, but 2 consecutive converged passes were requested.\')', 1)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:42:19')
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
					I(1, 'Time', '11/25/2026 22:42:19')
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
						I(0, 'Elapsed time : 00:00:10')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 240932, 'I(2, 2, \'Tetrahedra\', 18570, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 301528, 'I(4, 2, \'Tetrahedra\', 18570, false, 2, \'P1 Triangles\', 208, false, 2, \'P2 Triangles\', 198, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 7, 0, 7, 0, 472728, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 117752, false, 3, \'Matrix bandwidth\', 21.5856, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'462 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 472728, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621350')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'117752\', 1, \'Matrixbw\', \'21.635000\', 1, \'Matrixnnz\', \'2547567\', 1, \'Rootdim\', \'1040\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1811040000.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'10108\', 1, \'Factornnz\', \'29026624\', 1, \'Factorestflops\', \'32549000000\', 1, \'Fbsestflops\', \'100271291\', 1, \'Rootfactestflops\', \'374960001\', 1, \'Rootfbsestflops\', \'540800\', 1, \'Analysistimesec\', \'1.926100\', 1, \'Analysismemkb\', \'73416.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'5.095430\', 1, \'Factorizationmentotalkb\', \'112059.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.004408\', 1, \'Fbscputimesec\', \'0.004408\', 1, \'Fbsmemorytotalkb\', \'117576.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'117576\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
						I(0, 'Elapsed time : 00:00:10')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 241372, 'I(2, 2, \'Tetrahedra\', 18570, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 301392, 'I(4, 2, \'Tetrahedra\', 18570, false, 2, \'P1 Triangles\', 208, false, 2, \'P2 Triangles\', 198, false, 1, \'Disk\', \'10 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 7, 0, 7, 0, 473608, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 117752, false, 3, \'Matrix bandwidth\', 21.5856, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'462 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 473608, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621351')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'117752\', 1, \'Matrixbw\', \'21.635000\', 1, \'Matrixnnz\', \'2547567\', 1, \'Rootdim\', \'1040\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1812089984.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'10108\', 1, \'Factornnz\', \'29026624\', 1, \'Factorestflops\', \'32549000000\', 1, \'Fbsestflops\', \'100271291\', 1, \'Rootfactestflops\', \'374960001\', 1, \'Rootfbsestflops\', \'540800\', 1, \'Analysistimesec\', \'1.843360\', 1, \'Analysismemkb\', \'73520.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'5.085330\', 1, \'Factorizationmentotalkb\', \'112059.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.004728\', 1, \'Fbscputimesec\', \'0.004728\', 1, \'Fbsmemorytotalkb\', \'119684.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'119684\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
						I(0, 'Elapsed time : 00:00:10')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 239912, 'I(2, 2, \'Tetrahedra\', 18570, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 299032, 'I(4, 2, \'Tetrahedra\', 18570, false, 2, \'P1 Triangles\', 208, false, 2, \'P2 Triangles\', 198, false, 1, \'Disk\', \'12 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 7, 0, 7, 0, 472604, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 117752, false, 3, \'Matrix bandwidth\', 21.5856, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'462 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 472604, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.51 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621351')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'117752\', 1, \'Matrixbw\', \'21.635000\', 1, \'Matrixnnz\', \'2547567\', 1, \'Rootdim\', \'1040\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1813529984.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'10108\', 1, \'Factornnz\', \'29026624\', 1, \'Factorestflops\', \'32549000000\', 1, \'Fbsestflops\', \'100271291\', 1, \'Rootfactestflops\', \'374960001\', 1, \'Rootfbsestflops\', \'540800\', 1, \'Analysistimesec\', \'1.866480\', 1, \'Analysismemkb\', \'73484.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'5.148160\', 1, \'Factorizationmentotalkb\', \'112059.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.003239\', 1, \'Fbscputimesec\', \'0.003239\', 1, \'Fbsmemorytotalkb\', \'119984.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'119984\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 5GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 2GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 3.5GHz; S Matrix Error = 197.105%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 2.75GHz; S Matrix Error =  14.673%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 4.25GHz'
					$begin 'StartInfo'
						I(0, 'DLe')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 241776, 'I(2, 2, \'Tetrahedra\', 18570, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 301308, 'I(4, 2, \'Tetrahedra\', 18570, false, 2, \'P1 Triangles\', 208, false, 2, \'P2 Triangles\', 198, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 5, 0, 473280, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 117752, false, 3, \'Matrix bandwidth\', 21.5856, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.6 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 473280, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621362')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'117752\', 1, \'Matrixbw\', \'21.635000\', 1, \'Matrixnnz\', \'2547567\', 1, \'Rootdim\', \'1040\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1810899968.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'10108\', 1, \'Factornnz\', \'29026624\', 1, \'Factorestflops\', \'32549000000\', 1, \'Fbsestflops\', \'100271291\', 1, \'Rootfactestflops\', \'374960001\', 1, \'Rootfbsestflops\', \'540800\', 1, \'Analysistimesec\', \'0.230991\', 1, \'Analysismemkb\', \'65761.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'5.172220\', 1, \'Factorizationmentotalkb\', \'112059.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.005791\', 1, \'Fbscputimesec\', \'0.005791\', 1, \'Fbsmemorytotalkb\', \'118472.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'118472\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 242216, 'I(2, 2, \'Tetrahedra\', 18570, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 301716, 'I(4, 2, \'Tetrahedra\', 18570, false, 2, \'P1 Triangles\', 208, false, 2, \'P2 Triangles\', 198, false, 1, \'Disk\', \'14 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 5, 0, 473636, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 117752, false, 3, \'Matrix bandwidth\', 21.5856, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.6 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 473636, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.51 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621362')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'117752\', 1, \'Matrixbw\', \'21.635000\', 1, \'Matrixnnz\', \'2547567\', 1, \'Rootdim\', \'1040\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1810829952.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'10108\', 1, \'Factornnz\', \'29026624\', 1, \'Factorestflops\', \'32549000000\', 1, \'Fbsestflops\', \'100271291\', 1, \'Rootfactestflops\', \'374960001\', 1, \'Rootfbsestflops\', \'540800\', 1, \'Analysistimesec\', \'0.214349\', 1, \'Analysismemkb\', \'65761.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'5.140930\', 1, \'Factorizationmentotalkb\', \'112059.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.004257\', 1, \'Fbscputimesec\', \'0.004257\', 1, \'Fbsmemorytotalkb\', \'118796.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'118796\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 241040, 'I(2, 2, \'Tetrahedra\', 18570, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 301572, 'I(4, 2, \'Tetrahedra\', 18570, false, 2, \'P1 Triangles\', 208, false, 2, \'P2 Triangles\', 198, false, 1, \'Disk\', \'10 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 5, 0, 473032, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 117752, false, 3, \'Matrix bandwidth\', 21.5856, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.6 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 473032, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621363')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'117752\', 1, \'Matrixbw\', \'21.635000\', 1, \'Matrixnnz\', \'2547567\', 1, \'Rootdim\', \'1040\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1811549952.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'10108\', 1, \'Factornnz\', \'29026624\', 1, \'Factorestflops\', \'32549000000\', 1, \'Fbsestflops\', \'100271291\', 1, \'Rootfactestflops\', \'374960001\', 1, \'Rootfbsestflops\', \'540800\', 1, \'Analysistimesec\', \'0.335422\', 1, \'Analysismemkb\', \'65761.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'4.954820\', 1, \'Factorizationmentotalkb\', \'112059.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.003316\', 1, \'Fbscputimesec\', \'0.003316\', 1, \'Fbsmemorytotalkb\', \'118824.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'118824\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 4.25GHz; S Matrix Error =   0.561%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 3.125GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 78488, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'70.8 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:01\', 1, \'Total Memory\', \'213 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:53\', 1, \'Average memory/process\', \'860 MB\', 1, \'Max memory/process\', \'860 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 3, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:25\', 1, \'Average memory/process\', \'462 MB\', 1, \'Max memory/process\', \'463 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 3, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 18570, false, 2, \'Max matrix size\', 117752, false, 1, \'Matrix bandwidth\', \'21.6\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/25/2026 22:42:45\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
