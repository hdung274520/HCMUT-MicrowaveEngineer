$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2025
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/25/2026 22:44:11')
			I(1, 'Host', 'DLE')
			I(1, 'Processor', '8')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2025.2.4')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:01:10')
			I(1, 'ComEngine Memory', '77.1 M')
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
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 71.1 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:44:12')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:01')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 31004, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 178, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 32772, 'I(1, 2, \'Tetrahedra\', 195, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 20672, 'I(1, 2, \'Tetrahedra\', 278, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 170792, 'I(2, 2, \'Tetrahedra\', 248, false, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 183904, 'I(2, 2, \'Tetrahedra\', 248, false, 1, \'Disk\', \'85.6 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 21512, 'I(1, 2, \'Tetrahedra\', 643, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:44:13')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 173348, 'I(2, 2, \'Tetrahedra\', 602, false, 1, \'Disk\', \'4.56 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 182976, 'I(4, 2, \'Tetrahedra\', 602, false, 2, \'P1 Triangles\', 115, false, 2, \'P2 Triangles\', 96, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 189508, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 3168, false, 3, \'Matrix bandwidth\', 16.1519, \'%5.1f\', 1, \'Disk\', \'14 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 189508, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'375 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75536, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 21624, 'I(1, 2, \'Tetrahedra\', 766, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 173728, 'I(2, 2, \'Tetrahedra\', 714, false, 1, \'Disk\', \'3.79 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 183740, 'I(4, 2, \'Tetrahedra\', 714, false, 2, \'P1 Triangles\', 115, false, 2, \'P2 Triangles\', 96, false, 1, \'Disk\', \'3 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 192760, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 3862, false, 3, \'Matrix bandwidth\', 16.8585, \'%5.1f\', 1, \'Disk\', \'15.1 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 192760, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'217 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75700, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.100394, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22056, 'I(1, 2, \'Tetrahedra\', 984, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 174252, 'I(2, 2, \'Tetrahedra\', 927, false, 1, \'Disk\', \'4.18 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 185832, 'I(4, 2, \'Tetrahedra\', 927, false, 2, \'P1 Triangles\', 115, false, 2, \'P2 Triangles\', 96, false, 1, \'Disk\', \'22 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 199528, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 5180, false, 3, \'Matrix bandwidth\', 17.8237, \'%5.1f\', 1, \'Disk\', \'20.2 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 199528, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'283 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77096, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.193871, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22216, 'I(1, 2, \'Tetrahedra\', 1266, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 174924, 'I(2, 2, \'Tetrahedra\', 1192, false, 1, \'Disk\', \'3.79 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 187964, 'I(4, 2, \'Tetrahedra\', 1192, false, 2, \'P1 Triangles\', 115, false, 2, \'P2 Triangles\', 96, false, 1, \'Disk\', \'16 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 206772, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 6872, false, 3, \'Matrix bandwidth\', 18.5352, \'%5.1f\', 1, \'Disk\', \'26.8 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 206772, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'357 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77096, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0598441, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22544, 'I(1, 2, \'Tetrahedra\', 1634, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 176132, 'I(2, 2, \'Tetrahedra\', 1551, false, 1, \'Disk\', \'3.79 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 192076, 'I(4, 2, \'Tetrahedra\', 1551, false, 2, \'P1 Triangles\', 115, false, 2, \'P2 Triangles\', 98, false, 1, \'Disk\', \'69 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 219316, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 9114, false, 3, \'Matrix bandwidth\', 19.1936, \'%5.1f\', 1, \'Disk\', \'35.6 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 219316, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'460 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77096, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0514689, \'%.5f\')', 0)
			$end 'ProfileGroup'
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23100, 'I(1, 2, \'Tetrahedra\', 2106, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 177140, 'I(2, 2, \'Tetrahedra\', 2008, false, 1, \'Disk\', \'4.18 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 196008, 'I(4, 2, \'Tetrahedra\', 2008, false, 2, \'P1 Triangles\', 115, false, 2, \'P2 Triangles\', 98, false, 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 231496, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 12002, false, 3, \'Matrix bandwidth\', 19.7513, \'%5.1f\', 1, \'Disk\', \'48.5 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 231496, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'588 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77096, 'I(1, 0, \'Adaptive Pass 6\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621467')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'12002\', 1, \'Matrixbw\', \'19.952499\', 1, \'Matrixnnz\', \'239470\', 1, \'Rootdim\', \'210\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6574790144.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1050\', 1, \'Factornnz\', \'1580131\', 1, \'Factorestflops\', \'577197580\', 1, \'Fbsestflops\', \'5082682\', 1, \'Rootfactestflops\', \'3088153\', 1, \'Rootfbsestflops\', \'22050\', 1, \'Analysistimesec\', \'0.065198\', 1, \'Analysismemkb\', \'7908.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.076597\', 1, \'Factorizationmentotalkb\', \'37892.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.005150\', 1, \'Fbscputimesec\', \'0.015451\', 1, \'Fbsmemorytotalkb\', \'37196.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'231496\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.037064, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23740, 'I(1, 2, \'Tetrahedra\', 2714, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178400, 'I(2, 2, \'Tetrahedra\', 2594, false, 1, \'Disk\', \'3.79 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 201728, 'I(4, 2, \'Tetrahedra\', 2594, false, 2, \'P1 Triangles\', 117, false, 2, \'P2 Triangles\', 100, false, 1, \'Disk\', \'139 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 249588, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 15700, false, 3, \'Matrix bandwidth\', 20.1189, \'%5.1f\', 1, \'Disk\', \'62.9 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 249588, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'125 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77192, 'I(1, 0, \'Adaptive Pass 7\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621469')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'15700\', 1, \'Matrixbw\', \'20.281799\', 1, \'Matrixnnz\', \'318425\', 1, \'Rootdim\', \'230\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6569889792.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1378\', 1, \'Factornnz\', \'2281508\', 1, \'Factorestflops\', \'984794212\', 1, \'Fbsestflops\', \'7598307\', 1, \'Rootfactestflops\', \'4056900\', 1, \'Rootfbsestflops\', \'26450\', 1, \'Analysistimesec\', \'0.106032\', 1, \'Analysismemkb\', \'9076.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.134511\', 1, \'Factorizationmentotalkb\', \'52469.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.010785\', 1, \'Fbscputimesec\', \'0.032355\', 1, \'Fbsmemorytotalkb\', \'50388.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'249588\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0255518, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 24916, 'I(1, 2, \'Tetrahedra\', 3496, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 180408, 'I(2, 2, \'Tetrahedra\', 3340, false, 1, \'Disk\', \'3.79 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 209036, 'I(4, 2, \'Tetrahedra\', 3340, false, 2, \'P1 Triangles\', 117, false, 2, \'P2 Triangles\', 104, false, 1, \'Disk\', \'141 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 279332, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 20458, false, 3, \'Matrix bandwidth\', 20.4298, \'%5.1f\', 1, \'Disk\', \'81.5 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 279332, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'963 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77312, 'I(1, 0, \'Adaptive Pass 8\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621472')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'20458\', 1, \'Matrixbw\', \'20.565500\', 1, \'Matrixnnz\', \'420728\', 1, \'Rootdim\', \'264\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6563500032.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1786\', 1, \'Factornnz\', \'3285201\', 1, \'Factorestflops\', \'1656154203\', 1, \'Fbsestflops\', \'10981057\', 1, \'Rootfactestflops\', \'6134587\', 1, \'Rootfbsestflops\', \'34848\', 1, \'Analysistimesec\', \'0.130478\', 1, \'Analysismemkb\', \'12288.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.166803\', 1, \'Factorizationmentotalkb\', \'74203.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.009742\', 1, \'Fbscputimesec\', \'0.029227\', 1, \'Fbsmemorytotalkb\', \'73848.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'279332\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0261684, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 26024, 'I(1, 2, \'Tetrahedra\', 4512, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 182704, 'I(2, 2, \'Tetrahedra\', 4320, false, 1, \'Disk\', \'4.17 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 217896, 'I(4, 2, \'Tetrahedra\', 4320, false, 2, \'P1 Triangles\', 123, false, 2, \'P2 Triangles\', 112, false, 1, \'Disk\', \'527 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 314276, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 26692, false, 3, \'Matrix bandwidth\', 20.736, \'%5.1f\', 1, \'Disk\', \'106 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 314276, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'196 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77316, 'I(1, 0, \'Adaptive Pass 9\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621475')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'26692\', 1, \'Matrixbw\', \'20.844900\', 1, \'Matrixnnz\', \'556391\', 1, \'Rootdim\', \'308\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6556020224.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'2312\', 1, \'Factornnz\', \'4681332\', 1, \'Factorestflops\', \'2621480000\', 1, \'Fbsestflops\', \'15667075\', 1, \'Rootfactestflops\', \'9740875\', 1, \'Rootfbsestflops\', \'47432\', 1, \'Analysistimesec\', \'0.175582\', 1, \'Analysismemkb\', \'16092.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.241090\', 1, \'Factorizationmentotalkb\', \'104781.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.013462\', 1, \'Fbscputimesec\', \'0.040386\', 1, \'Fbsmemorytotalkb\', \'101368.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'314276\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0134979, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 27336, 'I(1, 2, \'Tetrahedra\', 5814, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 186120, 'I(2, 2, \'Tetrahedra\', 5564, false, 1, \'Disk\', \'3.41 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 231264, 'I(4, 2, \'Tetrahedra\', 5564, false, 2, \'P1 Triangles\', 130, false, 2, \'P2 Triangles\', 116, false, 1, \'Disk\', \'517 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 357212, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 34668, false, 3, \'Matrix bandwidth\', 20.9541, \'%5.1f\', 1, \'Disk\', \'137 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 357212, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'245 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77392, 'I(1, 0, \'Adaptive Pass 10\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621478')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'34668\', 1, \'Matrixbw\', \'21.044901\', 1, \'Matrixnnz\', \'729583\', 1, \'Rootdim\', \'372\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6544430080.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'2982\', 1, \'Factornnz\', \'6485054\', 1, \'Factorestflops\', \'4085260000\', 1, \'Fbsestflops\', \'21769496\', 1, \'Rootfactestflops\', \'17161580\', 1, \'Rootfbsestflops\', \'69192\', 1, \'Analysistimesec\', \'0.231045\', 1, \'Analysismemkb\', \'20988.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.386583\', 1, \'Factorizationmentotalkb\', \'145434.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.028592\', 1, \'Fbscputimesec\', \'0.085775\', 1, \'Fbsmemorytotalkb\', \'132796.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'357212\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0387371, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 29504, 'I(1, 2, \'Tetrahedra\', 7485, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 190032, 'I(2, 2, \'Tetrahedra\', 7162, false, 1, \'Disk\', \'3.79 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 246048, 'I(4, 2, \'Tetrahedra\', 7162, false, 2, \'P1 Triangles\', 135, false, 2, \'P2 Triangles\', 126, false, 1, \'Disk\', \'606 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 2, 0, 413428, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 44804, false, 3, \'Matrix bandwidth\', 21.1158, \'%5.1f\', 1, \'Disk\', \'177 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 413428, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'312 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77456, 'I(1, 0, \'Adaptive Pass 11\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621481')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'44804\', 1, \'Matrixbw\', \'21.192801\', 1, \'Matrixnnz\', \'949521\', 1, \'Rootdim\', \'396\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6532109824.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'3917\', 1, \'Factornnz\', \'8882450\', 1, \'Factorestflops\', \'6175180000\', 1, \'Fbsestflops\', \'30387586\', 1, \'Rootfactestflops\', \'20701801\', 1, \'Rootfbsestflops\', \'78408\', 1, \'Analysistimesec\', \'0.360006\', 1, \'Analysismemkb\', \'27308.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.536912\', 1, \'Factorizationmentotalkb\', \'190380.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.030439\', 1, \'Fbscputimesec\', \'0.091316\', 1, \'Fbsmemorytotalkb\', \'176668.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'413428\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0092497, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 32288, 'I(1, 2, \'Tetrahedra\', 9638, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 194532, 'I(2, 2, \'Tetrahedra\', 9200, false, 1, \'Disk\', \'3.79 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 265364, 'I(4, 2, \'Tetrahedra\', 9200, false, 2, \'P1 Triangles\', 140, false, 2, \'P2 Triangles\', 135, false, 1, \'Disk\', \'595 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 2, 0, 497132, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 57754, false, 3, \'Matrix bandwidth\', 21.2074, \'%5.1f\', 1, \'Disk\', \'227 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 497132, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'394 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77552, 'I(1, 0, \'Adaptive Pass 12\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621485')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'57754\', 1, \'Matrixbw\', \'21.270599\', 1, \'Matrixnnz\', \'1228462\', 1, \'Rootdim\', \'480\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6550289920.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'4983\', 1, \'Factornnz\', \'12362231\', 1, \'Factorestflops\', \'9856180000\', 1, \'Fbsestflops\', \'42098467\', 1, \'Rootfactestflops\', \'36866505\', 1, \'Rootfbsestflops\', \'115200\', 1, \'Analysistimesec\', \'0.468936\', 1, \'Analysismemkb\', \'35236.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.789704\', 1, \'Factorizationmentotalkb\', \'269395.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.032708\', 1, \'Fbscputimesec\', \'0.098124\', 1, \'Fbsmemorytotalkb\', \'244368.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'497132\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0104869, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 35760, 'I(1, 2, \'Tetrahedra\', 12409, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 201244, 'I(2, 2, \'Tetrahedra\', 11799, false, 1, \'Disk\', \'3.42 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 288540, 'I(4, 2, \'Tetrahedra\', 11799, false, 2, \'P1 Triangles\', 147, false, 2, \'P2 Triangles\', 143, false, 1, \'Disk\', \'599 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 3, 0, 602224, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 74356, false, 3, \'Matrix bandwidth\', 21.2852, \'%5.1f\', 1, \'Disk\', \'292 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 602224, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'501 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77552, 'I(1, 0, \'Adaptive Pass 13\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621490')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'74356\', 1, \'Matrixbw\', \'21.339701\', 1, \'Matrixnnz\', \'1586737\', 1, \'Rootdim\', \'546\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6530420224.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'6456\', 1, \'Factornnz\', \'16871562\', 1, \'Factorestflops\', \'14706900000\', 1, \'Fbsestflops\', \'57010278\', 1, \'Rootfactestflops\', \'54259956\', 1, \'Rootfbsestflops\', \'149058\', 1, \'Analysistimesec\', \'0.574491\', 1, \'Analysismemkb\', \'46144.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'1.042640\', 1, \'Factorizationmentotalkb\', \'364305.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.068202\', 1, \'Fbscputimesec\', \'0.204605\', 1, \'Fbsmemorytotalkb\', \'329736.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'602224\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00762655, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 39388, 'I(1, 2, \'Tetrahedra\', 15955, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 208000, 'I(2, 2, \'Tetrahedra\', 15166, false, 1, \'Disk\', \'8.07 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 322060, 'I(4, 2, \'Tetrahedra\', 15166, false, 2, \'P1 Triangles\', 160, false, 2, \'P2 Triangles\', 153, false, 1, \'Disk\', \'1.1 KB\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 6, 0, 736060, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 95776, false, 3, \'Matrix bandwidth\', 21.3589, \'%5.1f\', 1, \'Disk\', \'376 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 736060, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'646 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77552, 'I(1, 0, \'Adaptive Pass 14\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621496')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'95776\', 1, \'Matrixbw\', \'21.406300\', 1, \'Matrixnnz\', \'2050207\', 1, \'Rootdim\', \'612\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6502349824.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8353\', 1, \'Factornnz\', \'22994714\', 1, \'Factorestflops\', \'22710200000\', 1, \'Fbsestflops\', \'78361728\', 1, \'Rootfactestflops\', \'76410173\', 1, \'Rootfbsestflops\', \'187272\', 1, \'Analysistimesec\', \'0.757813\', 1, \'Analysismemkb\', \'59260.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'1.776600\', 1, \'Factorizationmentotalkb\', \'485266.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.082672\', 1, \'Fbscputimesec\', \'0.248018\', 1, \'Fbsmemorytotalkb\', \'435448.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'736060\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00676185, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:44:59')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:23')
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
					I(1, 'Time', '11/25/2026 22:44:59')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:00:23')
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
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 235712, 'I(2, 2, \'Tetrahedra\', 15166, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 283736, 'I(4, 2, \'Tetrahedra\', 15166, false, 2, \'P1 Triangles\', 160, false, 2, \'P2 Triangles\', 153, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 417268, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 95776, false, 3, \'Matrix bandwidth\', 21.3589, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'376 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 417268, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621508')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'95776\', 1, \'Matrixbw\', \'21.406300\', 1, \'Matrixnnz\', \'2050207\', 1, \'Rootdim\', \'612\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1946870016.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8309\', 1, \'Factornnz\', \'23032898\', 1, \'Factorestflops\', \'22751400000\', 1, \'Fbsestflops\', \'78469785\', 1, \'Rootfactestflops\', \'76410173\', 1, \'Rootfbsestflops\', \'187272\', 1, \'Analysistimesec\', \'1.316910\', 1, \'Analysismemkb\', \'59220.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'3.597240\', 1, \'Factorizationmentotalkb\', \'83380.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.003055\', 1, \'Fbscputimesec\', \'0.003055\', 1, \'Fbsmemorytotalkb\', \'90264.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'90264\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 236632, 'I(2, 2, \'Tetrahedra\', 15166, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 285920, 'I(4, 2, \'Tetrahedra\', 15166, false, 2, \'P1 Triangles\', 160, false, 2, \'P2 Triangles\', 153, false, 1, \'Disk\', \'18 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 5, 0, 418964, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 95776, false, 3, \'Matrix bandwidth\', 21.3589, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'376 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 418964, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.51 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621508')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'95776\', 1, \'Matrixbw\', \'21.406300\', 1, \'Matrixnnz\', \'2050207\', 1, \'Rootdim\', \'612\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1945600000.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8309\', 1, \'Factornnz\', \'23032898\', 1, \'Factorestflops\', \'22751400000\', 1, \'Fbsestflops\', \'78469785\', 1, \'Rootfactestflops\', \'76410173\', 1, \'Rootfbsestflops\', \'187272\', 1, \'Analysistimesec\', \'1.314300\', 1, \'Analysismemkb\', \'59588.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'3.821720\', 1, \'Factorizationmentotalkb\', \'83380.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.000846\', 1, \'Fbscputimesec\', \'0.000846\', 1, \'Fbsmemorytotalkb\', \'90740.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'90740\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 234668, 'I(2, 2, \'Tetrahedra\', 15166, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 283184, 'I(4, 2, \'Tetrahedra\', 15166, false, 2, \'P1 Triangles\', 160, false, 2, \'P2 Triangles\', 153, false, 1, \'Disk\', \'22 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 417204, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 95776, false, 3, \'Matrix bandwidth\', 21.3589, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'376 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 417204, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621508')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'95776\', 1, \'Matrixbw\', \'21.406300\', 1, \'Matrixnnz\', \'2050207\', 1, \'Rootdim\', \'612\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1947500032.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8309\', 1, \'Factornnz\', \'23032898\', 1, \'Factorestflops\', \'22751400000\', 1, \'Fbsestflops\', \'78469785\', 1, \'Rootfactestflops\', \'76410173\', 1, \'Rootfbsestflops\', \'187272\', 1, \'Analysistimesec\', \'1.389170\', 1, \'Analysismemkb\', \'59600.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'3.586760\', 1, \'Factorizationmentotalkb\', \'83380.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.000627\', 1, \'Fbscputimesec\', \'0.000627\', 1, \'Fbsmemorytotalkb\', \'91344.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'91344\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 5GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 2GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 3.5GHz; S Matrix Error = 216.995%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 2.75GHz; S Matrix Error = 104.162%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 4.25GHz'
					$begin 'StartInfo'
						I(0, 'DLe')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:06')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 235148, 'I(2, 2, \'Tetrahedra\', 15166, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 283900, 'I(4, 2, \'Tetrahedra\', 15166, false, 2, \'P1 Triangles\', 160, false, 2, \'P2 Triangles\', 153, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 3, 0, 3, 0, 416856, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 95776, false, 3, \'Matrix bandwidth\', 21.3589, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.59 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 416856, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.51 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621518')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'95776\', 1, \'Matrixbw\', \'21.406300\', 1, \'Matrixnnz\', \'2050207\', 1, \'Rootdim\', \'612\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1958349952.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8309\', 1, \'Factornnz\', \'23032898\', 1, \'Factorestflops\', \'22751400000\', 1, \'Fbsestflops\', \'78469785\', 1, \'Rootfactestflops\', \'76410173\', 1, \'Rootfbsestflops\', \'187272\', 1, \'Analysistimesec\', \'0.172150\', 1, \'Analysismemkb\', \'52978.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'3.689670\', 1, \'Factorizationmentotalkb\', \'83380.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001141\', 1, \'Fbscputimesec\', \'0.001141\', 1, \'Fbsmemorytotalkb\', \'89928.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'89928\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
						I(0, 'Elapsed time : 00:00:06')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 236284, 'I(2, 2, \'Tetrahedra\', 15166, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 285640, 'I(4, 2, \'Tetrahedra\', 15166, false, 2, \'P1 Triangles\', 160, false, 2, \'P2 Triangles\', 153, false, 1, \'Disk\', \'11 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 4, 0, 4, 0, 417952, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 95776, false, 3, \'Matrix bandwidth\', 21.3589, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.59 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 417952, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621518')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'95776\', 1, \'Matrixbw\', \'21.406300\', 1, \'Matrixnnz\', \'2050207\', 1, \'Rootdim\', \'612\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1957319936.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8309\', 1, \'Factornnz\', \'23032898\', 1, \'Factorestflops\', \'22751400000\', 1, \'Fbsestflops\', \'78469785\', 1, \'Rootfactestflops\', \'76410173\', 1, \'Rootfbsestflops\', \'187272\', 1, \'Analysistimesec\', \'0.200038\', 1, \'Analysismemkb\', \'52978.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'3.760360\', 1, \'Factorizationmentotalkb\', \'83380.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001282\', 1, \'Fbscputimesec\', \'0.001282\', 1, \'Fbsmemorytotalkb\', \'89940.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'89940\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
						I(0, 'Elapsed time : 00:00:06')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 235772, 'I(2, 2, \'Tetrahedra\', 15166, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 283848, 'I(4, 2, \'Tetrahedra\', 15166, false, 2, \'P1 Triangles\', 160, false, 2, \'P2 Triangles\', 153, false, 1, \'Disk\', \'22 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 4, 0, 4, 0, 417304, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 95776, false, 3, \'Matrix bandwidth\', 21.3589, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.59 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 417304, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.51 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621519')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'95776\', 1, \'Matrixbw\', \'21.406300\', 1, \'Matrixnnz\', \'2050207\', 1, \'Rootdim\', \'612\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1958150016.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'8309\', 1, \'Factornnz\', \'23032898\', 1, \'Factorestflops\', \'22751400000\', 1, \'Fbsestflops\', \'78469785\', 1, \'Rootfactestflops\', \'76410173\', 1, \'Rootfbsestflops\', \'187272\', 1, \'Analysistimesec\', \'0.243196\', 1, \'Analysismemkb\', \'52978.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'3.704600\', 1, \'Factorizationmentotalkb\', \'83380.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001481\', 1, \'Fbscputimesec\', \'0.001481\', 1, \'Fbsmemorytotalkb\', \'90232.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'90232\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 4.25GHz; S Matrix Error =   8.654%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 3.125GHz; S Matrix Error =   0.488%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 2.375GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 78628, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'71.1 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:01\', 1, \'Total Memory\', \'212 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:45\', 1, \'Average memory/process\', \'719 MB\', 1, \'Max memory/process\', \'719 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 3, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:23\', 1, \'Average memory/process\', \'408 MB\', 1, \'Max memory/process\', \'409 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 3, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 15166, false, 2, \'Max matrix size\', 95776, false, 1, \'Matrix bandwidth\', \'21.4\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/25/2026 22:45:22\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
