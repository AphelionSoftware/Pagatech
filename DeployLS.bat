CALL Deploy\Aphelion_ReconAdmin\Aphelion_ReconAdmin.deploy.cmd /Y  > Deploy\Aphelion_ReconAdminLS.txt

CALL Deploy\Aphelion_ReconProcessing\Aphelion_ReconProcessing.deploy.cmd /Y  > Deploy\Aphelion_ReconProcessingLS.txt
IISRESET /restart
