$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2025
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/25/2026 22:46:30')
			I(1, 'Host', 'DLE')
			I(1, 'Processor', '8')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2025.2.4')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:01:18')
			I(1, 'ComEngine Memory', '77.3 M')
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
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 71.3 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:46:30')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:01')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 31324, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 228, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 32364, 'I(1, 2, \'Tetrahedra\', 228, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 20596, 'I(1, 2, \'Tetrahedra\', 307, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 170996, 'I(2, 2, \'Tetrahedra\', 277, false, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 182512, 'I(2, 2, \'Tetrahedra\', 277, false, 1, \'Disk\', \'81.4 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 21156, 'I(1, 2, \'Tetrahedra\', 598, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:46:32')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:51')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 172968, 'I(2, 2, \'Tetrahedra\', 551, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 182176, 'I(4, 2, \'Tetrahedra\', 551, false, 2, \'P1 Triangles\', 90, false, 2, \'P2 Triangles\', 94, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 189272, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 3006, false, 3, \'Matrix bandwidth\', 16.3615, \'%5.1f\', 1, \'Disk\', \'13.4 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 189272, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'215 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75624, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 21500, 'I(1, 2, \'Tetrahedra\', 773, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 173636, 'I(2, 2, \'Tetrahedra\', 715, false, 1, \'Disk\', \'3.8 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 184280, 'I(4, 2, \'Tetrahedra\', 715, false, 2, \'P1 Triangles\', 90, false, 2, \'P2 Triangles\', 94, false, 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 194192, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 4040, false, 3, \'Matrix bandwidth\', 17.3881, \'%5.1f\', 1, \'Disk\', \'15.8 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 194192, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'53.5 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75796, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.162481, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 21692, 'I(1, 2, \'Tetrahedra\', 988, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 174092, 'I(2, 2, \'Tetrahedra\', 925, false, 1, \'Disk\', \'3.8 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 185704, 'I(4, 2, \'Tetrahedra\', 925, false, 2, \'P1 Triangles\', 90, false, 2, \'P2 Triangles\', 94, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 199576, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 5332, false, 3, \'Matrix bandwidth\', 18.1627, \'%5.1f\', 1, \'Disk\', \'20.8 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 199576, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'61.6 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77176, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0627869, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22108, 'I(1, 2, \'Tetrahedra\', 1268, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 174868, 'I(2, 2, \'Tetrahedra\', 1197, false, 1, \'Disk\', \'4.18 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 188352, 'I(4, 2, \'Tetrahedra\', 1197, false, 2, \'P1 Triangles\', 90, false, 2, \'P2 Triangles\', 94, false, 1, \'Disk\', \'5 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 209636, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 7030, false, 3, \'Matrix bandwidth\', 18.8887, \'%5.1f\', 1, \'Disk\', \'27.5 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 209636, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'362 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77204, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0213002, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22492, 'I(1, 2, \'Tetrahedra\', 1631, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 175908, 'I(2, 2, \'Tetrahedra\', 1550, false, 1, \'Disk\', \'4.94 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 192132, 'I(4, 2, \'Tetrahedra\', 1550, false, 2, \'P1 Triangles\', 90, false, 2, \'P2 Triangles\', 94, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 218708, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 9216, false, 3, \'Matrix bandwidth\', 19.414, \'%5.1f\', 1, \'Disk\', \'36 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 218708, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'462 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77228, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0153263, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22836, 'I(1, 2, \'Tetrahedra\', 2099, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 176844, 'I(2, 2, \'Tetrahedra\', 1992, false, 1, \'Disk\', \'5.33 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 195712, 'I(4, 2, \'Tetrahedra\', 1992, false, 2, \'P1 Triangles\', 92, false, 2, \'P2 Triangles\', 96, false, 1, \'Disk\', \'158 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 232088, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 12008, false, 3, \'Matrix bandwidth\', 19.8132, \'%5.1f\', 1, \'Disk\', \'48.5 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 232088, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'586 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77228, 'I(1, 0, \'Adaptive Pass 6\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621606')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'12008\', 1, \'Matrixbw\', \'19.986401\', 1, \'Matrixnnz\', \'239997\', 1, \'Rootdim\', \'294\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6694280192.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1058\', 1, \'Factornnz\', \'1618196\', 1, \'Factorestflops\', \'640726899\', 1, \'Fbsestflops\', \'5418469\', 1, \'Rootfactestflops\', \'8472308\', 1, \'Rootfbsestflops\', \'43218\', 1, \'Analysistimesec\', \'0.057817\', 1, \'Analysismemkb\', \'7924.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.072439\', 1, \'Factorizationmentotalkb\', \'38380.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.005671\', 1, \'Fbscputimesec\', \'0.017014\', 1, \'Fbsmemorytotalkb\', \'38028.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'232088\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.031668, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23620, 'I(1, 2, \'Tetrahedra\', 2700, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178400, 'I(2, 2, \'Tetrahedra\', 2563, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 201676, 'I(4, 2, \'Tetrahedra\', 2563, false, 2, \'P1 Triangles\', 92, false, 2, \'P2 Triangles\', 98, false, 1, \'Disk\', \'75 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 251836, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 15652, false, 3, \'Matrix bandwidth\', 20.1929, \'%5.1f\', 1, \'Disk\', \'62.7 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 251836, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'127 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77256, 'I(1, 0, \'Adaptive Pass 7\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621609')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'15652\', 1, \'Matrixbw\', \'20.336500\', 1, \'Matrixnnz\', \'318307\', 1, \'Rootdim\', \'318\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6689120256.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1380\', 1, \'Factornnz\', \'2310090\', 1, \'Factorestflops\', \'1058131372\', 1, \'Fbsestflops\', \'7782894\', 1, \'Rootfactestflops\', \'10720762\', 1, \'Rootfbsestflops\', \'50562\', 1, \'Analysistimesec\', \'0.093747\', 1, \'Analysismemkb\', \'9236.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.113043\', 1, \'Factorizationmentotalkb\', \'53715.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.010357\', 1, \'Fbscputimesec\', \'0.031071\', 1, \'Fbsmemorytotalkb\', \'52728.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'251836\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0134845, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 24680, 'I(1, 2, \'Tetrahedra\', 3471, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 180056, 'I(2, 2, \'Tetrahedra\', 3304, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 208760, 'I(4, 2, \'Tetrahedra\', 3304, false, 2, \'P1 Triangles\', 93, false, 2, \'P2 Triangles\', 102, false, 1, \'Disk\', \'224 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 280228, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 20404, false, 3, \'Matrix bandwidth\', 20.5526, \'%5.1f\', 1, \'Disk\', \'81.3 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 280228, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'957 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77292, 'I(1, 0, \'Adaptive Pass 8\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621611')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'20404\', 1, \'Matrixbw\', \'20.667000\', 1, \'Matrixnnz\', \'421689\', 1, \'Rootdim\', \'326\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6683089920.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1783\', 1, \'Factornnz\', \'3333524\', 1, \'Factorestflops\', \'1733095314\', 1, \'Fbsestflops\', \'11196084\', 1, \'Rootfactestflops\', \'11550358\', 1, \'Rootfbsestflops\', \'53138\', 1, \'Analysistimesec\', \'0.123147\', 1, \'Analysismemkb\', \'12132.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.149451\', 1, \'Factorizationmentotalkb\', \'74930.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.008317\', 1, \'Fbscputimesec\', \'0.024950\', 1, \'Fbsmemorytotalkb\', \'75084.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'280228\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0111784, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 25816, 'I(1, 2, \'Tetrahedra\', 4465, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 182604, 'I(2, 2, \'Tetrahedra\', 4247, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 217392, 'I(4, 2, \'Tetrahedra\', 4247, false, 2, \'P1 Triangles\', 99, false, 2, \'P2 Triangles\', 104, false, 1, \'Disk\', \'301 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 319156, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 26406, false, 3, \'Matrix bandwidth\', 20.7587, \'%5.1f\', 1, \'Disk\', \'105 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 319156, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.19 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77328, 'I(1, 0, \'Adaptive Pass 9\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621614')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'26406\', 1, \'Matrixbw\', \'20.855499\', 1, \'Matrixnnz\', \'550710\', 1, \'Rootdim\', \'356\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6675789824.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'2311\', 1, \'Factornnz\', \'4646409\', 1, \'Factorestflops\', \'2642460000\', 1, \'Fbsestflops\', \'15467375\', 1, \'Rootfactestflops\', \'15041155\', 1, \'Rootfbsestflops\', \'63368\', 1, \'Analysistimesec\', \'0.161548\', 1, \'Analysismemkb\', \'15924.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.211125\', 1, \'Factorizationmentotalkb\', \'108576.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.012819\', 1, \'Fbscputimesec\', \'0.038457\', 1, \'Fbsmemorytotalkb\', \'106648.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'319156\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00866605, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 27340, 'I(1, 2, \'Tetrahedra\', 5741, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 185416, 'I(2, 2, \'Tetrahedra\', 5468, false, 1, \'Disk\', \'4.18 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 229296, 'I(4, 2, \'Tetrahedra\', 5468, false, 2, \'P1 Triangles\', 108, false, 2, \'P2 Triangles\', 107, false, 1, \'Disk\', \'522 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 360376, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 34178, false, 3, \'Matrix bandwidth\', 20.9466, \'%5.1f\', 1, \'Disk\', \'135 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 360376, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.53 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77496, 'I(1, 0, \'Adaptive Pass 10\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621617')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'34178\', 1, \'Matrixbw\', \'21.027000\', 1, \'Matrixnnz\', \'718660\', 1, \'Rootdim\', \'414\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6665990144.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'2985\', 1, \'Factornnz\', \'6379177\', 1, \'Factorestflops\', \'4064450000\', 1, \'Fbsestflops\', \'21395945\', 1, \'Rootfactestflops\', \'23654768\', 1, \'Rootfbsestflops\', \'85698\', 1, \'Analysistimesec\', \'0.225687\', 1, \'Analysismemkb\', \'20908.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.306435\', 1, \'Factorizationmentotalkb\', \'144953.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.018280\', 1, \'Fbscputimesec\', \'0.054841\', 1, \'Fbsmemorytotalkb\', \'138140.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'360376\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0149234, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 28784, 'I(1, 2, \'Tetrahedra\', 7203, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 188872, 'I(2, 2, \'Tetrahedra\', 6872, false, 1, \'Disk\', \'3.8 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 242720, 'I(4, 2, \'Tetrahedra\', 6872, false, 2, \'P1 Triangles\', 118, false, 2, \'P2 Triangles\', 117, false, 1, \'Disk\', \'751 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 408772, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 43088, false, 3, \'Matrix bandwidth\', 21.1182, \'%5.1f\', 1, \'Disk\', \'170 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 408772, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'290 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77688, 'I(1, 0, \'Adaptive Pass 11\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621620')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'43088\', 1, \'Matrixbw\', \'21.189301\', 1, \'Matrixnnz\', \'913003\', 1, \'Rootdim\', \'460\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6654049792.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'3725\', 1, \'Factornnz\', \'8405180\', 1, \'Factorestflops\', \'5712190000\', 1, \'Fbsestflops\', \'28110559\', 1, \'Rootfactestflops\', \'32447696\', 1, \'Rootfbsestflops\', \'105800\', 1, \'Analysistimesec\', \'0.341713\', 1, \'Analysismemkb\', \'26032.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.447205\', 1, \'Factorizationmentotalkb\', \'182119.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.033896\', 1, \'Fbscputimesec\', \'0.101686\', 1, \'Fbsmemorytotalkb\', \'174676.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'408772\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0129586, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 31408, 'I(1, 2, \'Tetrahedra\', 9268, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 193692, 'I(2, 2, \'Tetrahedra\', 8815, false, 1, \'Disk\', \'3.92 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 260588, 'I(4, 2, \'Tetrahedra\', 8815, false, 2, \'P1 Triangles\', 129, false, 2, \'P2 Triangles\', 121, false, 1, \'Disk\', \'607 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 2, 0, 484056, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 55482, false, 3, \'Matrix bandwidth\', 21.2146, \'%5.1f\', 1, \'Disk\', \'218 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 484056, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'383 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77788, 'I(1, 0, \'Adaptive Pass 12\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621624')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'55482\', 1, \'Matrixbw\', \'21.274401\', 1, \'Matrixnnz\', \'1180344\', 1, \'Rootdim\', \'530\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6638799872.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'4786\', 1, \'Factornnz\', \'11702195\', 1, \'Factorestflops\', \'9449770000\', 1, \'Fbsestflops\', \'39972556\', 1, \'Rootfactestflops\', \'49628348\', 1, \'Rootfbsestflops\', \'140450\', 1, \'Analysistimesec\', \'0.422300\', 1, \'Analysismemkb\', \'33912.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.761931\', 1, \'Factorizationmentotalkb\', \'243624.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.037919\', 1, \'Fbscputimesec\', \'0.113756\', 1, \'Fbsmemorytotalkb\', \'234976.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'484056\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0079422, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 34220, 'I(1, 2, \'Tetrahedra\', 11915, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 199284, 'I(2, 2, \'Tetrahedra\', 11307, false, 1, \'Disk\', \'4.2 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 284228, 'I(4, 2, \'Tetrahedra\', 11307, false, 2, \'P1 Triangles\', 137, false, 2, \'P2 Triangles\', 133, false, 1, \'Disk\', \'821 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 4, 0, 591712, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 71352, false, 3, \'Matrix bandwidth\', 21.2868, \'%5.1f\', 1, \'Disk\', \'280 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 591712, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'488 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77816, 'I(1, 0, \'Adaptive Pass 13\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621630')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'71352\', 1, \'Matrixbw\', \'21.339001\', 1, \'Matrixnnz\', \'1522583\', 1, \'Rootdim\', \'630\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6618749952.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'6175\', 1, \'Factornnz\', \'16122058\', 1, \'Factorestflops\', \'14381200000\', 1, \'Fbsestflops\', \'54343946\', 1, \'Rootfactestflops\', \'83352337\', 1, \'Rootfbsestflops\', \'198450\', 1, \'Analysistimesec\', \'0.614382\', 1, \'Analysismemkb\', \'44156.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'1.381560\', 1, \'Factorizationmentotalkb\', \'351236.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.105130\', 1, \'Fbscputimesec\', \'0.315391\', 1, \'Fbsmemorytotalkb\', \'322572.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'591712\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0252486, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 36204, 'I(1, 2, \'Tetrahedra\', 14486, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 206104, 'I(2, 2, \'Tetrahedra\', 13717, false, 1, \'Disk\', \'4.18 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 306676, 'I(4, 2, \'Tetrahedra\', 13717, false, 2, \'P1 Triangles\', 147, false, 2, \'P2 Triangles\', 140, false, 1, \'Disk\', \'680 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 4, 0, 683612, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 86864, false, 3, \'Matrix bandwidth\', 21.3503, \'%5.1f\', 1, \'Disk\', \'341 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 683612, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'527 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77816, 'I(1, 0, \'Adaptive Pass 14\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621635')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'86864\', 1, \'Matrixbw\', \'21.396700\', 1, \'Matrixnnz\', \'1858603\', 1, \'Rootdim\', \'688\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6599869952.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'7556\', 1, \'Factornnz\', \'20342216\', 1, \'Factorestflops\', \'20238900000\', 1, \'Fbsestflops\', \'69952969\', 1, \'Rootfactestflops\', \'108557020\', 1, \'Rootfbsestflops\', \'236672\', 1, \'Analysistimesec\', \'0.622893\', 1, \'Analysismemkb\', \'54004.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'1.260020\', 1, \'Factorizationmentotalkb\', \'424620.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.064881\', 1, \'Fbscputimesec\', \'0.194644\', 1, \'Fbsmemorytotalkb\', \'395612.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'683612\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00639834, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 42708, 'I(1, 2, \'Tetrahedra\', 18605, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 214600, 'I(2, 2, \'Tetrahedra\', 17557, false, 1, \'Disk\', \'8.08 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 344104, 'I(4, 2, \'Tetrahedra\', 17557, false, 2, \'P1 Triangles\', 158, false, 2, \'P2 Triangles\', 150, false, 1, \'Disk\', \'826 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 3, 0, 7, 0, 849288, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 111356, false, 3, \'Matrix bandwidth\', 21.3814, \'%5.1f\', 1, \'Disk\', \'437 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 849288, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'754 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77820, 'I(1, 0, \'Adaptive Pass 15\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621642')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'111356\', 1, \'Matrixbw\', \'21.421200\', 1, \'Matrixnnz\', \'2385379\', 1, \'Rootdim\', \'878\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6589940224.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'9681\', 1, \'Factornnz\', \'28375874\', 1, \'Factorestflops\', \'32615000000\', 1, \'Fbsestflops\', \'97926324\', 1, \'Rootfactestflops\', \'225616600\', 1, \'Rootfbsestflops\', \'385442\', 1, \'Analysistimesec\', \'1.032390\', 1, \'Analysismemkb\', \'69100.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'2.114470\', 1, \'Factorizationmentotalkb\', \'599753.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.104807\', 1, \'Fbscputimesec\', \'0.314422\', 1, \'Fbsmemorytotalkb\', \'529404.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'849288\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00243446, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:47:23')
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
					I(1, 'Time', '11/25/2026 22:47:23')
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
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 240076, 'I(2, 2, \'Tetrahedra\', 17557, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 295736, 'I(4, 2, \'Tetrahedra\', 17557, false, 2, \'P1 Triangles\', 158, false, 2, \'P2 Triangles\', 150, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 5, 0, 455400, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 111356, false, 3, \'Matrix bandwidth\', 21.3814, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'437 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 455400, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621652')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'111356\', 1, \'Matrixbw\', \'21.421200\', 1, \'Matrixnnz\', \'2385379\', 1, \'Rootdim\', \'878\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1957810048.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'9736\', 1, \'Factornnz\', \'28076924\', 1, \'Factorestflops\', \'31697200000\', 1, \'Fbsestflops\', \'97117361\', 1, \'Rootfactestflops\', \'225616600\', 1, \'Rootfbsestflops\', \'385442\', 1, \'Analysistimesec\', \'1.489580\', 1, \'Analysismemkb\', \'69352.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'4.386450\', 1, \'Factorizationmentotalkb\', \'101680.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.003529\', 1, \'Fbscputimesec\', \'0.003529\', 1, \'Fbsmemorytotalkb\', \'109512.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'109512\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 240924, 'I(2, 2, \'Tetrahedra\', 17557, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 297344, 'I(4, 2, \'Tetrahedra\', 17557, false, 2, \'P1 Triangles\', 158, false, 2, \'P2 Triangles\', 150, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 6, 0, 6, 0, 457944, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 111356, false, 3, \'Matrix bandwidth\', 21.3814, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'437 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 457944, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.51 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621654')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'111356\', 1, \'Matrixbw\', \'21.421200\', 1, \'Matrixnnz\', \'2385379\', 1, \'Rootdim\', \'878\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1956999936.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'9736\', 1, \'Factornnz\', \'28076924\', 1, \'Factorestflops\', \'31697200000\', 1, \'Fbsestflops\', \'97117361\', 1, \'Rootfactestflops\', \'225616600\', 1, \'Rootfbsestflops\', \'385442\', 1, \'Analysistimesec\', \'1.658190\', 1, \'Analysismemkb\', \'68876.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'4.988770\', 1, \'Factorizationmentotalkb\', \'101680.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.002904\', 1, \'Fbscputimesec\', \'0.002904\', 1, \'Fbsmemorytotalkb\', \'111228.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'111228\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 239208, 'I(2, 2, \'Tetrahedra\', 17557, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 294972, 'I(4, 2, \'Tetrahedra\', 17557, false, 2, \'P1 Triangles\', 158, false, 2, \'P2 Triangles\', 150, false, 1, \'Disk\', \'13 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 6, 0, 6, 0, 455372, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 111356, false, 3, \'Matrix bandwidth\', 21.3814, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'437 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 455372, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621654')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'111356\', 1, \'Matrixbw\', \'21.421200\', 1, \'Matrixnnz\', \'2385379\', 1, \'Rootdim\', \'878\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1958579968.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'9736\', 1, \'Factornnz\', \'28076924\', 1, \'Factorestflops\', \'31697200000\', 1, \'Fbsestflops\', \'97117361\', 1, \'Rootfactestflops\', \'225616600\', 1, \'Rootfbsestflops\', \'385442\', 1, \'Analysistimesec\', \'1.654120\', 1, \'Analysismemkb\', \'69348.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'4.651870\', 1, \'Factorizationmentotalkb\', \'101680.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.003776\', 1, \'Fbscputimesec\', \'0.003776\', 1, \'Fbsmemorytotalkb\', \'110244.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'110244\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 5GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 2GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 3.5GHz; S Matrix Error = 385.260%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 2.75GHz; S Matrix Error =  11.292%\')', false, true)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 240508, 'I(2, 2, \'Tetrahedra\', 17557, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 296352, 'I(4, 2, \'Tetrahedra\', 17557, false, 2, \'P1 Triangles\', 158, false, 2, \'P2 Triangles\', 150, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 5, 0, 457404, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 111356, false, 3, \'Matrix bandwidth\', 21.3814, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.6 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 457404, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621666')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'111356\', 1, \'Matrixbw\', \'21.421200\', 1, \'Matrixnnz\', \'2385379\', 1, \'Rootdim\', \'878\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1957040000.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'9736\', 1, \'Factornnz\', \'28076924\', 1, \'Factorestflops\', \'31697200000\', 1, \'Fbsestflops\', \'97117361\', 1, \'Rootfactestflops\', \'225616600\', 1, \'Rootfbsestflops\', \'385442\', 1, \'Analysistimesec\', \'0.199216\', 1, \'Analysismemkb\', \'61633.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'4.825020\', 1, \'Factorizationmentotalkb\', \'101680.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.002288\', 1, \'Fbscputimesec\', \'0.002288\', 1, \'Fbsmemorytotalkb\', \'110848.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'110848\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 240924, 'I(2, 2, \'Tetrahedra\', 17557, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 297856, 'I(4, 2, \'Tetrahedra\', 17557, false, 2, \'P1 Triangles\', 158, false, 2, \'P2 Triangles\', 150, false, 1, \'Disk\', \'5 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 5, 0, 458012, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 111356, false, 3, \'Matrix bandwidth\', 21.3814, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.6 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 458012, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621666')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'111356\', 1, \'Matrixbw\', \'21.421200\', 1, \'Matrixnnz\', \'2385379\', 1, \'Rootdim\', \'878\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1955529984.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'9736\', 1, \'Factornnz\', \'28076924\', 1, \'Factorestflops\', \'31697200000\', 1, \'Fbsestflops\', \'97117361\', 1, \'Rootfactestflops\', \'225616600\', 1, \'Rootfbsestflops\', \'385442\', 1, \'Analysistimesec\', \'0.213587\', 1, \'Analysismemkb\', \'61633.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'4.804530\', 1, \'Factorizationmentotalkb\', \'101680.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.002516\', 1, \'Fbscputimesec\', \'0.002516\', 1, \'Fbsmemorytotalkb\', \'109944.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'109944\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 240028, 'I(2, 2, \'Tetrahedra\', 17557, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 295880, 'I(4, 2, \'Tetrahedra\', 17557, false, 2, \'P1 Triangles\', 158, false, 2, \'P2 Triangles\', 150, false, 1, \'Disk\', \'8 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 454916, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 111356, false, 3, \'Matrix bandwidth\', 21.3814, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.6 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 454916, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.51 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621667')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'111356\', 1, \'Matrixbw\', \'21.421200\', 1, \'Matrixnnz\', \'2385379\', 1, \'Rootdim\', \'878\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'1957510016.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'9736\', 1, \'Factornnz\', \'28076924\', 1, \'Factorestflops\', \'31697200000\', 1, \'Fbsestflops\', \'97117361\', 1, \'Rootfactestflops\', \'225616600\', 1, \'Rootfbsestflops\', \'385442\', 1, \'Analysistimesec\', \'0.282155\', 1, \'Analysismemkb\', \'61633.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'4.653020\', 1, \'Factorizationmentotalkb\', \'101680.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001885\', 1, \'Fbscputimesec\', \'0.001885\', 1, \'Fbsmemorytotalkb\', \'108752.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'108752\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 4.25GHz; S Matrix Error =   1.475%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 3.125GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 78816, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'71.3 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:01\', 1, \'Total Memory\', \'210 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:51\', 1, \'Average memory/process\', \'829 MB\', 1, \'Max memory/process\', \'829 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 3, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:25\', 1, \'Average memory/process\', \'446 MB\', 1, \'Max memory/process\', \'447 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 3, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 17557, false, 2, \'Max matrix size\', 111356, false, 1, \'Matrix bandwidth\', \'21.4\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/25/2026 22:47:49\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
