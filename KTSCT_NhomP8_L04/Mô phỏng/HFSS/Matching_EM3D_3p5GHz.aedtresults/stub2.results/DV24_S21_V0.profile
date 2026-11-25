$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2025
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/25/2026 22:45:30')
			I(1, 'Host', 'DLE')
			I(1, 'Processor', '8')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2025.2.4')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:53')
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
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 71.2 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:45:30')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:01')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 30968, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 187, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 32976, 'I(1, 2, \'Tetrahedra\', 216, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 20416, 'I(1, 2, \'Tetrahedra\', 281, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 170964, 'I(2, 2, \'Tetrahedra\', 250, false, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 184040, 'I(2, 2, \'Tetrahedra\', 250, false, 1, \'Disk\', \'84.7 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 21388, 'I(1, 2, \'Tetrahedra\', 648, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:45:32')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:33')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 173104, 'I(2, 2, \'Tetrahedra\', 596, false, 1, \'Disk\', \'4.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 183016, 'I(4, 2, \'Tetrahedra\', 596, false, 2, \'P1 Triangles\', 102, false, 2, \'P2 Triangles\', 101, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 189944, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 3228, false, 3, \'Matrix bandwidth\', 16.5056, \'%5.1f\', 1, \'Disk\', \'14.2 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 189944, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'227 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75444, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 21552, 'I(1, 2, \'Tetrahedra\', 827, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 173564, 'I(2, 2, \'Tetrahedra\', 764, false, 1, \'Disk\', \'4.2 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 183528, 'I(4, 2, \'Tetrahedra\', 764, false, 2, \'P1 Triangles\', 102, false, 2, \'P2 Triangles\', 101, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 194524, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 4280, false, 3, \'Matrix bandwidth\', 17.4935, \'%5.1f\', 1, \'Disk\', \'16.7 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 194524, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'236 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75692, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.114029, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 21792, 'I(1, 2, \'Tetrahedra\', 1061, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 174368, 'I(2, 2, \'Tetrahedra\', 989, false, 1, \'Disk\', \'4.56 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 186628, 'I(4, 2, \'Tetrahedra\', 989, false, 2, \'P1 Triangles\', 102, false, 2, \'P2 Triangles\', 101, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 202488, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 5694, false, 3, \'Matrix bandwidth\', 18.2983, \'%5.1f\', 1, \'Disk\', \'22.2 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 202488, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'300 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77060, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0582405, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22012, 'I(1, 2, \'Tetrahedra\', 1361, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 175316, 'I(2, 2, \'Tetrahedra\', 1281, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 188816, 'I(4, 2, \'Tetrahedra\', 1281, false, 2, \'P1 Triangles\', 102, false, 2, \'P2 Triangles\', 101, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 210284, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 7518, false, 3, \'Matrix bandwidth\', 18.9673, \'%5.1f\', 1, \'Disk\', \'29.4 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 210284, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'383 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77208, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0777086, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22576, 'I(1, 2, \'Tetrahedra\', 1750, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 175900, 'I(2, 2, \'Tetrahedra\', 1647, false, 1, \'Disk\', \'4.56 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 191972, 'I(4, 2, \'Tetrahedra\', 1647, false, 2, \'P1 Triangles\', 102, false, 2, \'P2 Triangles\', 103, false, 1, \'Disk\', \'70 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 224892, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 9850, false, 3, \'Matrix bandwidth\', 19.5695, \'%5.1f\', 1, \'Disk\', \'38.5 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 224892, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'86.3 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77280, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0276185, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23080, 'I(1, 2, \'Tetrahedra\', 2247, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 177028, 'I(2, 2, \'Tetrahedra\', 2126, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 196752, 'I(4, 2, \'Tetrahedra\', 2126, false, 2, \'P1 Triangles\', 102, false, 2, \'P2 Triangles\', 105, false, 1, \'Disk\', \'76 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 240140, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 12890, false, 3, \'Matrix bandwidth\', 20.0168, \'%5.1f\', 1, \'Disk\', \'51.9 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 240140, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'106 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77384, 'I(1, 0, \'Adaptive Pass 6\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621545')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'12890\', 1, \'Matrixbw\', \'20.214600\', 1, \'Matrixnnz\', \'260566\', 1, \'Rootdim\', \'318\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6660780032.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1144\', 1, \'Factornnz\', \'1850139\', 1, \'Factorestflops\', \'817169432\', 1, \'Fbsestflops\', \'6272466\', 1, \'Rootfactestflops\', \'10720994\', 1, \'Rootfbsestflops\', \'50562\', 1, \'Analysistimesec\', \'0.071766\', 1, \'Analysismemkb\', \'7580.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.092155\', 1, \'Factorizationmentotalkb\', \'44447.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.006713\', 1, \'Fbscputimesec\', \'0.020139\', 1, \'Fbsmemorytotalkb\', \'45248.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'240140\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0299053, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23948, 'I(1, 2, \'Tetrahedra\', 2888, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178692, 'I(2, 2, \'Tetrahedra\', 2750, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 203832, 'I(4, 2, \'Tetrahedra\', 2750, false, 2, \'P1 Triangles\', 104, false, 2, \'P2 Triangles\', 107, false, 1, \'Disk\', \'146 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 257924, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 16822, false, 3, \'Matrix bandwidth\', 20.3623, \'%5.1f\', 1, \'Disk\', \'67.3 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 257924, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'798 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77408, 'I(1, 0, \'Adaptive Pass 7\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621548')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'16822\', 1, \'Matrixbw\', \'20.522100\', 1, \'Matrixnnz\', \'345222\', 1, \'Rootdim\', \'348\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6654759936.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1499\', 1, \'Factornnz\', \'2595381\', 1, \'Factorestflops\', \'1246860731\', 1, \'Fbsestflops\', \'8745060\', 1, \'Rootfactestflops\', \'14049993\', 1, \'Rootfbsestflops\', \'60552\', 1, \'Analysistimesec\', \'0.109897\', 1, \'Analysismemkb\', \'9880.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.149731\', 1, \'Factorizationmentotalkb\', \'60958.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.011770\', 1, \'Fbscputimesec\', \'0.035312\', 1, \'Fbsmemorytotalkb\', \'57100.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'257924\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00900699, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 25048, 'I(1, 2, \'Tetrahedra\', 3726, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 180768, 'I(2, 2, \'Tetrahedra\', 3562, false, 1, \'Disk\', \'4.56 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 211108, 'I(4, 2, \'Tetrahedra\', 3562, false, 2, \'P1 Triangles\', 104, false, 2, \'P2 Triangles\', 115, false, 1, \'Disk\', \'297 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 290332, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 21958, false, 3, \'Matrix bandwidth\', 20.6623, \'%5.1f\', 1, \'Disk\', \'87.4 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 290332, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'165 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77408, 'I(1, 0, \'Adaptive Pass 8\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621551')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'21958\', 1, \'Matrixbw\', \'20.790701\', 1, \'Matrixnnz\', \'456522\', 1, \'Rootdim\', \'406\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6648679936.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1942\', 1, \'Factornnz\', \'3760753\', 1, \'Factorestflops\', \'2073157895\', 1, \'Fbsestflops\', \'12866159\', 1, \'Rootfactestflops\', \'22310021\', 1, \'Rootfbsestflops\', \'82418\', 1, \'Analysistimesec\', \'0.147095\', 1, \'Analysismemkb\', \'13132.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.190934\', 1, \'Factorizationmentotalkb\', \'89129.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.009994\', 1, \'Fbscputimesec\', \'0.029983\', 1, \'Fbsmemorytotalkb\', \'83324.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'290332\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0253018, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 26240, 'I(1, 2, \'Tetrahedra\', 4806, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 183572, 'I(2, 2, \'Tetrahedra\', 4592, false, 1, \'Disk\', \'3.8 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 221312, 'I(4, 2, \'Tetrahedra\', 4592, false, 2, \'P1 Triangles\', 108, false, 2, \'P2 Triangles\', 119, false, 1, \'Disk\', \'304 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 327284, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 28544, false, 3, \'Matrix bandwidth\', 20.8869, \'%5.1f\', 1, \'Disk\', \'113 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 327284, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'206 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77412, 'I(1, 0, \'Adaptive Pass 9\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621553')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'28544\', 1, \'Matrixbw\', \'20.993000\', 1, \'Matrixnnz\', \'599225\', 1, \'Rootdim\', \'438\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6639989760.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'2494\', 1, \'Factornnz\', \'5148914\', 1, \'Factorestflops\', \'3096810000\', 1, \'Fbsestflops\', \'17408011\', 1, \'Rootfactestflops\', \'28011476\', 1, \'Rootfbsestflops\', \'95922\', 1, \'Analysistimesec\', \'0.191580\', 1, \'Analysismemkb\', \'17344.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.273503\', 1, \'Factorizationmentotalkb\', \'116626.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.018647\', 1, \'Fbscputimesec\', \'0.055942\', 1, \'Fbsmemorytotalkb\', \'111636.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'327284\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00631668, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 27612, 'I(1, 2, \'Tetrahedra\', 6190, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 186852, 'I(2, 2, \'Tetrahedra\', 5898, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 233404, 'I(4, 2, \'Tetrahedra\', 5898, false, 2, \'P1 Triangles\', 118, false, 2, \'P2 Triangles\', 129, false, 1, \'Disk\', \'824 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 379484, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 36848, false, 3, \'Matrix bandwidth\', 21.0256, \'%5.1f\', 1, \'Disk\', \'146 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 379484, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'258 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77428, 'I(1, 0, \'Adaptive Pass 10\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621557')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'36848\', 1, \'Matrixbw\', \'21.115000\', 1, \'Matrixnnz\', \'778047\', 1, \'Rootdim\', \'508\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6629559808.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'3201\', 1, \'Factornnz\', \'7082744\', 1, \'Factorestflops\', \'4698160000\', 1, \'Fbsestflops\', \'23557655\', 1, \'Rootfactestflops\', \'43701416\', 1, \'Rootfbsestflops\', \'129032\', 1, \'Analysistimesec\', \'0.261914\', 1, \'Analysismemkb\', \'22184.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.392292\', 1, \'Factorizationmentotalkb\', \'156147.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.018335\', 1, \'Fbscputimesec\', \'0.055005\', 1, \'Fbsmemorytotalkb\', \'153456.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'379484\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0318758, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 29984, 'I(1, 2, \'Tetrahedra\', 7976, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 190532, 'I(2, 2, \'Tetrahedra\', 7589, false, 1, \'Disk\', \'4.58 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 250460, 'I(4, 2, \'Tetrahedra\', 7589, false, 2, \'P1 Triangles\', 122, false, 2, \'P2 Triangles\', 137, false, 1, \'Disk\', \'451 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 2, 0, 436220, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 47634, false, 3, \'Matrix bandwidth\', 21.1503, \'%5.1f\', 1, \'Disk\', \'188 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 436220, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'328 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77464, 'I(1, 0, \'Adaptive Pass 11\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621560')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'47634\', 1, \'Matrixbw\', \'21.225000\', 1, \'Matrixnnz\', \'1011030\', 1, \'Rootdim\', \'578\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6615000064.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'4148\', 1, \'Factornnz\', \'9893629\', 1, \'Factorestflops\', \'7558170000\', 1, \'Fbsestflops\', \'33924699\', 1, \'Rootfactestflops\', \'64369936\', 1, \'Rootfbsestflops\', \'167042\', 1, \'Analysistimesec\', \'0.409257\', 1, \'Analysismemkb\', \'28672.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'0.592234\', 1, \'Factorizationmentotalkb\', \'207891.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.025538\', 1, \'Fbscputimesec\', \'0.076616\', 1, \'Fbsmemorytotalkb\', \'195500.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'436220\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00636268, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 32728, 'I(1, 2, \'Tetrahedra\', 10253, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 196336, 'I(2, 2, \'Tetrahedra\', 9731, false, 1, \'Disk\', \'2.44 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 269264, 'I(4, 2, \'Tetrahedra\', 9731, false, 2, \'P1 Triangles\', 129, false, 2, \'P2 Triangles\', 147, false, 1, \'Disk\', \'743 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 3, 0, 533744, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 3, false, 2, \'Matrix size\', 61334, false, 3, \'Matrix bandwidth\', 21.2551, \'%5.1f\', 1, \'Disk\', \'241 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 533744, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'416 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 77476, 'I(1, 0, \'Adaptive Pass 12\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795621563')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'61334\', 1, \'Matrixbw\', \'21.317200\', 1, \'Matrixnnz\', \'1307470\', 1, \'Rootdim\', \'642\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'6599009792.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'5327\', 1, \'Factornnz\', \'13609705\', 1, \'Factorestflops\', \'12122700000\', 1, \'Fbsestflops\', \'46664436\', 1, \'Rootfactestflops\', \'88206288\', 1, \'Rootfbsestflops\', \'206082\', 1, \'Analysistimesec\', \'0.470961\', 1, \'Analysismemkb\', \'38080.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'3\', 1, \'Factorizationtimesec\', \'1.061970\', 1, \'Factorizationmentotalkb\', \'291593.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'3\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.063748\', 1, \'Fbscputimesec\', \'0.191245\', 1, \'Fbsmemorytotalkb\', \'277464.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'533744\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.00961773, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '11/25/2026 22:46:05')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:17')
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
					I(1, 'Time', '11/25/2026 22:46:05')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:00:17')
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
						I(0, 'Elapsed time : 00:00:05')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 222576, 'I(2, 2, \'Tetrahedra\', 9731, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 255876, 'I(4, 2, \'Tetrahedra\', 9731, false, 2, \'P1 Triangles\', 129, false, 2, \'P2 Triangles\', 147, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 3, 0, 2, 0, 353388, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 61334, false, 3, \'Matrix bandwidth\', 21.2551, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'241 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 353388, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621571')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'61334\', 1, \'Matrixbw\', \'21.317200\', 1, \'Matrixnnz\', \'1307470\', 1, \'Rootdim\', \'642\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'2001529984.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'5344\', 1, \'Factornnz\', \'13501935\', 1, \'Factorestflops\', \'11858600000\', 1, \'Fbsestflops\', \'46229975\', 1, \'Rootfactestflops\', \'88206288\', 1, \'Rootfbsestflops\', \'206082\', 1, \'Analysistimesec\', \'0.791583\', 1, \'Analysismemkb\', \'38024.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'2.226630\', 1, \'Factorizationmentotalkb\', \'63149.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001695\', 1, \'Fbscputimesec\', \'0.001695\', 1, \'Fbsmemorytotalkb\', \'70020.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'70020\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
						I(0, 'Elapsed time : 00:00:05')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 223340, 'I(2, 2, \'Tetrahedra\', 9731, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 256784, 'I(4, 2, \'Tetrahedra\', 9731, false, 2, \'P1 Triangles\', 129, false, 2, \'P2 Triangles\', 147, false, 1, \'Disk\', \'24 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 3, 0, 3, 0, 354644, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 61334, false, 3, \'Matrix bandwidth\', 21.2551, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'241 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 354644, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.51 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621572')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'61334\', 1, \'Matrixbw\', \'21.317200\', 1, \'Matrixnnz\', \'1307470\', 1, \'Rootdim\', \'642\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'2000630016.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'5344\', 1, \'Factornnz\', \'13501935\', 1, \'Factorestflops\', \'11858600000\', 1, \'Fbsestflops\', \'46229975\', 1, \'Rootfactestflops\', \'88206288\', 1, \'Rootfbsestflops\', \'206082\', 1, \'Analysistimesec\', \'0.828602\', 1, \'Analysismemkb\', \'37944.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'2.613750\', 1, \'Factorizationmentotalkb\', \'63149.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001102\', 1, \'Fbscputimesec\', \'0.001102\', 1, \'Fbsmemorytotalkb\', \'69992.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'69992\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
						I(0, 'Elapsed time : 00:00:05')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 222032, 'I(2, 2, \'Tetrahedra\', 9731, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 255780, 'I(4, 2, \'Tetrahedra\', 9731, false, 2, \'P1 Triangles\', 129, false, 2, \'P2 Triangles\', 147, false, 1, \'Disk\', \'22 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 3, 0, 3, 0, 353412, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 61334, false, 3, \'Matrix bandwidth\', 21.2551, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'241 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 353412, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621573')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'61334\', 1, \'Matrixbw\', \'21.317200\', 1, \'Matrixnnz\', \'1307470\', 1, \'Rootdim\', \'642\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'2002329984.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'5344\', 1, \'Factornnz\', \'13501935\', 1, \'Factorestflops\', \'11858600000\', 1, \'Fbsestflops\', \'46229975\', 1, \'Rootfactestflops\', \'88206288\', 1, \'Rootfbsestflops\', \'206082\', 1, \'Analysistimesec\', \'0.849453\', 1, \'Analysismemkb\', \'37784.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'2.650620\', 1, \'Factorizationmentotalkb\', \'63149.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001293\', 1, \'Fbscputimesec\', \'0.001293\', 1, \'Fbsmemorytotalkb\', \'72352.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'72352\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 5GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 2GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 3.5GHz; S Matrix Error = 413.499%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 2.75GHz; S Matrix Error =  19.932%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 4.25GHz'
					$begin 'StartInfo'
						I(0, 'DLe')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:04')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 222204, 'I(2, 2, \'Tetrahedra\', 9731, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 256000, 'I(4, 2, \'Tetrahedra\', 9731, false, 2, \'P1 Triangles\', 129, false, 2, \'P2 Triangles\', 147, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 2, 0, 2, 0, 353268, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 61334, false, 3, \'Matrix bandwidth\', 21.2551, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.59 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 353268, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621580')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'61334\', 1, \'Matrixbw\', \'21.317200\', 1, \'Matrixnnz\', \'1307470\', 1, \'Rootdim\', \'642\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'2017200000.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'5344\', 1, \'Factornnz\', \'13501935\', 1, \'Factorestflops\', \'11858600000\', 1, \'Fbsestflops\', \'46229975\', 1, \'Rootfactestflops\', \'88206288\', 1, \'Rootfbsestflops\', \'206082\', 1, \'Analysistimesec\', \'0.106261\', 1, \'Analysismemkb\', \'33797.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'1.980500\', 1, \'Factorizationmentotalkb\', \'63149.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.002843\', 1, \'Fbscputimesec\', \'0.002843\', 1, \'Fbsmemorytotalkb\', \'69372.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'69372\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
						I(0, 'Elapsed time : 00:00:04')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 223892, 'I(2, 2, \'Tetrahedra\', 9731, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 258124, 'I(4, 2, \'Tetrahedra\', 9731, false, 2, \'P1 Triangles\', 129, false, 2, \'P2 Triangles\', 147, false, 1, \'Disk\', \'10 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 2, 0, 2, 0, 357036, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 61334, false, 3, \'Matrix bandwidth\', 21.2551, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.6 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 357036, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.5 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621581')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'61334\', 1, \'Matrixbw\', \'21.317200\', 1, \'Matrixnnz\', \'1307470\', 1, \'Rootdim\', \'642\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'2015480064.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'5344\', 1, \'Factornnz\', \'13501935\', 1, \'Factorestflops\', \'11858600000\', 1, \'Fbsestflops\', \'46229975\', 1, \'Rootfactestflops\', \'88206288\', 1, \'Rootfbsestflops\', \'206082\', 1, \'Analysistimesec\', \'0.133704\', 1, \'Analysismemkb\', \'33797.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'1.998350\', 1, \'Factorizationmentotalkb\', \'63149.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001787\', 1, \'Fbscputimesec\', \'0.001787\', 1, \'Fbsmemorytotalkb\', \'71512.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'71512\', 1, \'Maxdiskkb\', \'0\')', false, true)
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
						I(0, 'Elapsed time : 00:00:04')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 222236, 'I(2, 2, \'Tetrahedra\', 9731, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 255864, 'I(4, 2, \'Tetrahedra\', 9731, false, 2, \'P1 Triangles\', 129, false, 2, \'P2 Triangles\', 147, false, 1, \'Disk\', \'14 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 2, 0, 2, 0, 353180, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 61334, false, 3, \'Matrix bandwidth\', 21.2551, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.6 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 353180, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.51 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795621581')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'61334\', 1, \'Matrixbw\', \'21.317200\', 1, \'Matrixnnz\', \'1307470\', 1, \'Rootdim\', \'642\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'12th Gen Intel(R) Core(TM) i3-1215U\', 1, \'CpuPhysicCores\', \'6\', 1, \'CpuLogicCores\', \'8\', 1, \'Cpufreqkhz\', \'2017680000.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'4.000000\', 1, \'Cpuestgflops\', \'105.599998\', 1, \'Memorybwestkbps\', \'25.600000\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'5344\', 1, \'Factornnz\', \'13501935\', 1, \'Factorestflops\', \'11858600000\', 1, \'Fbsestflops\', \'46229975\', 1, \'Rootfactestflops\', \'88206288\', 1, \'Rootfbsestflops\', \'206082\', 1, \'Analysistimesec\', \'0.132929\', 1, \'Analysismemkb\', \'33797.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'1.881140\', 1, \'Factorizationmentotalkb\', \'63149.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.000991\', 1, \'Fbscputimesec\', \'0.000991\', 1, \'Fbsmemorytotalkb\', \'69760.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'69760\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 4.25GHz; S Matrix Error =   4.097%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 3.125GHz; S Matrix Error =   0.097%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 2.375GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 78620, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'71.2 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:01\', 1, \'Total Memory\', \'212 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:33\', 1, \'Average memory/process\', \'521 MB\', 1, \'Max memory/process\', \'521 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 3, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:17\', 1, \'Average memory/process\', \'346 MB\', 1, \'Max memory/process\', \'349 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 3, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 9731, false, 2, \'Max matrix size\', 61334, false, 1, \'Matrix bandwidth\', \'21.3\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/25/2026 22:46:23\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
