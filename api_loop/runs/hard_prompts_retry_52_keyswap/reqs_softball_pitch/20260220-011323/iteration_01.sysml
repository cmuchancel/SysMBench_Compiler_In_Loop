package SoftTossMachine {
    private import ScalarValues::*;

    enum def TossVariationMode {
        enum Consistent;
        enum Varied;
    }

    item def Ball {}
    item def Power {}
    item def ControlSignal {}
    item def StatusSignal {}

    port def BallPort {}
    port def PowerPort {}
    port def ControlPort {}
    port def StatusPort {}

    part def BallHandlingSubsystem {
        port outBall : BallPort;
        attribute storageCapacity : Integer;
        attribute singleBallPresent : Boolean;
        attribute jamPreventionEnabled : Boolean;
    }

    part def BallFeedSubsystem {
        port inBall : BallPort;
        port outBall : BallPort;
        port controlIn : ControlPort;
        attribute consistentFeed : Boolean;
        attribute feedIntervalSeconds : Real;
    }

    part def BallDeliverySubsystem {
        port inBall : BallPort;
        port controlIn : ControlPort;
        attribute tossSpeed : Real;
        attribute tossHeight : Real;
        attribute usableRange : Real;
        attribute consistentOutcome : Boolean;
    }

    part def AimingDirectionControlSubsystem {
        port controlIn : ControlPort;
        attribute directionAngle : Real;
        attribute targetRegionDefined : Boolean;
        attribute repeatableReference : Boolean;
    }

    part def TimingControlSubsystem {
        port controlOut : ControlPort;
        port statusOut : StatusPort;
        attribute userDefinedInterval : Boolean;
        attribute intervalAdjustableDuringPractice : Boolean;
        attribute faultDetectionEnabled : Boolean;
        attribute safeStateCommand : Boolean;
    }

    part def PowerElectricalProtectionSubsystem {
        port powerOut : PowerPort;
        attribute suitableForIndoorOutdoor : Boolean;
        attribute electricalProtectionEnabled : Boolean;
        attribute safePowerUpDown : Boolean;
    }

    part def StructureEnclosureSubsystem {
        attribute stableBase : Boolean;
        attribute protectiveEnclosure : Boolean;
        attribute dustWeatherTolerance : Boolean;
        attribute portabilityEnabled : Boolean;
    }

    part def UserInterfaceSafetySubsystem {
        port controlOut : ControlPort;
        port statusOut : StatusPort;
        attribute emergencyStop : Boolean;
        attribute guardingEnabled : Boolean;
        attribute userFeedbackReadyActiveFault : Boolean;
        attribute easySetup : Boolean;
    }

    part def SoftTossTrainingMachine {
        part ballHandling : BallHandlingSubsystem;
        part ballFeed : BallFeedSubsystem;
        part ballDelivery : BallDeliverySubsystem;
        part aimingControl : AimingDirectionControlSubsystem;
        part timingControl : TimingControlSubsystem;
        part powerProtection : PowerElectricalProtectionSubsystem;
        part structureEnclosure : StructureEnclosureSubsystem;
        part userInterfaceSafety : UserInterfaceSafetySubsystem;

        attribute deliversSoftTossBall : Boolean = true;
        attribute variedTossHeight : Boolean = true;
        attribute variedTossSpeed : Boolean = true;
        attribute variedTossDirection : Boolean = true;
        attribute targetRegionAdjustable : Boolean = true;
        attribute consistencyModeSupported : Boolean = true;
        attribute misfirePrevention : Boolean = true;

        attribute repeatabilityTolerance : Real;
        attribute operatingDistanceMin : Real;
        attribute operatingDistanceMax : Real;
        attribute cycleRateSustained : Boolean;

        attribute portabilitySinglePerson : Boolean = true;
        attribute costTargetMinUSD : Real = 150.0;
        attribute costTargetMaxUSD : Real = 300.0;
        attribute manufacturableLowCost : Boolean = true;
        attribute serviceLifeLong : Boolean = true;

        attribute userControlsEnableDisable : Boolean = true;
        attribute userControlsTiming : Boolean = true;
        attribute userControlsVariation : Boolean = true;
        attribute userFeedbackProvided : Boolean = true;
        attribute powerSourceReliable : Boolean = true;
        attribute transportStorageConvenient : Boolean = true;

        attribute emergencyStopProvided : Boolean = true;
        attribute safeFaultResponse : Boolean = true;
        attribute impactResistance : Boolean = true;

        attribute practiceSessionReliability : Boolean = true;
        attribute maintenanceAccessible : Boolean = true;
        attribute wearControlled : Boolean = true;

        attribute verificationAccuracyPossible : Boolean = true;
        attribute verificationRepeatabilityPossible : Boolean = true;
        attribute verificationVariationPossible : Boolean = true;
        attribute verificationEnvironmentalPossible : Boolean = true;
        attribute verificationPortabilityPossible : Boolean = true;

        connect ballHandling.outBall to ballFeed.inBall;
        connect ballFeed.outBall to ballDelivery.inBall;
        connect timingControl.controlOut to ballFeed.controlIn;
        connect timingControl.controlOut to ballDelivery.controlIn;
        connect timingControl.controlOut to aimingControl.controlIn;
        connect userInterfaceSafety.controlOut to timingControl.controlOut;
        connect timingControl.statusOut to userInterfaceSafety.statusOut;
        connect powerProtection.powerOut to timingControl.controlOut;
    }
}
