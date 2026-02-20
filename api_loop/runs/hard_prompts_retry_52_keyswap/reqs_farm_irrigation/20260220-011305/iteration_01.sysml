package IrrigationLiftMBSE {
    private import ScalarValues::*;

    item def Water;

    port def WaterPort {
        item water : Water;
    }

    part def WaterSourceSubsystem {
        port outlet : WaterPort;
        attribute intakeProtection : Boolean = true;
        attribute erosionControl : Boolean = true;
    }

    part def PumpingSubsystem {
        port inlet : WaterPort;
        port outlet : WaterPort;
        attribute minStaticLift : Length = 30 [ft];
        attribute continuousOperation : Time = 8 [h];
        attribute dryRunProtection : Boolean = true;
        attribute overpressureProtection : Boolean = true;
    }

    part def ConveyanceSubsystem {
        port inlet : WaterPort;
        port outlet : WaterPort;
        attribute flowControlSimple : Boolean = true;
        attribute primingSupport : Boolean = true;
    }

    part def PowerSubsystem {
        attribute powerAvailable : Boolean = true;
        attribute lockableDisconnect : Boolean = true;
        attribute overcurrentProtection : Boolean = true;
    }

    part def ControlsSubsystem {
        attribute localStartStop : Boolean = true;
        attribute emergencyStop : Boolean = true;
        attribute statusIndication : Boolean = true;
    }

    part def CivilSubsystem {
        attribute foundationProvided : Boolean = true;
        attribute protectiveHousing : Boolean = true;
        attribute accessClearance : Boolean = true;
    }

    part def OperationsMaintenanceSupport {
        attribute maintenanceTimeLimit : Time = 30 [min];
        attribute sparesCommercial : Boolean = true;
        attribute availabilityGoal : Real = 0.95;
    }

    part def IrrigationLiftSystem {
        part waterSource : WaterSourceSubsystem;
        part pumping : PumpingSubsystem;
        part conveyance : ConveyanceSubsystem;
        part power : PowerSubsystem;
        part controls : ControlsSubsystem;
        part civil : CivilSubsystem;
        part opsSupport : OperationsMaintenanceSupport;

        port intake : WaterPort;
        port delivery : WaterPort;

        attribute minLift : Length = 30 [ft];
        attribute minFlow : VolumetricFlowRate = 20 [gpm];
        attribute acceptanceTestDuration : Time = 2 [h];
        attribute scheduleLimit : Time = 6 [month];
        attribute ruralEnvironment : Boolean = true;

        connect intake to waterSource.outlet;
        connect waterSource.outlet to pumping.inlet;
        connect pumping.outlet to conveyance.inlet;
        connect conveyance.outlet to delivery;
    }
}
