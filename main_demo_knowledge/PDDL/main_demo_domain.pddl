(define (domain main_demo)
  ; :fluents commented out: the installed Fast Downward translator does not accept this requirement
  ; keyword at all (fails to parse), which blocks planning entirely. hasBattery is still tracked
  ; as an ontology data property for Flavor triggers; it is just not a PDDL fluent for now.
  (:requirements :strips :typing :negative-preconditions) ; :fluents

  (:types
    Robot
    Location
    Surface
    Manipulation_Object
  )

  (:predicates
    ; robot's base is currently at this Location (changed by navigate)
    (robotAtLocation ?robot - Robot ?location - Location)
    ; robot's arm is currently reaching this Surface, within the current Location (changed by move)
    (robotAtSurface ?robot - Robot ?surface - Surface)
    ; static structural fact: this Surface belongs to this Location
    (surfaceInLocation ?surface - Surface ?location - Location)
    ; object is currently placed on this Surface
    (objectOnSurface ?object - Manipulation_Object ?surface - Surface)
    ; robot is currently holding this object
    (robotHolding ?robot - Robot ?object - Manipulation_Object)
    ; robot's gripper/hand is free
    (handEmpty ?robot - Robot)
    ; zero-parameter, world_state-level fact (not tied to any single Robot/Location/Surface)
    (operatorPresent)
  )

  ; Navigate: moves the robot base between Locations. Does not touch Surfaces/arm state.
  (:action navigate
    :parameters (?robot - Robot ?from - Location ?to - Location)
    :precondition (robotAtLocation ?robot ?from)
    :effect (and
      (not (robotAtLocation ?robot ?from))
      (robotAtLocation ?robot ?to)
      ; (decrease (hasBattery ?robot) 5) ; commented out along with :fluents above
    )
  )

  ; Move: repositions the robot's arm between Surfaces within the current Location.
  ; The base is assumed static; the robot must already be at ?location.

  (:action move
    :parameters (?robot - Robot ?location - Location ?from_surface - Surface ?to_surface - Surface)
    :precondition (and
      (robotAtLocation ?robot ?location)
      (robotAtSurface ?robot ?from_surface)
      (surfaceInLocation ?to_surface ?location)
    )
    :effect (and
      (not (robotAtSurface ?robot ?from_surface))
      (robotAtSurface ?robot ?to_surface)
    )
  )

  (:action pick
    :parameters (?robot - Robot ?object - Manipulation_Object ?location - Location ?surface - Surface)
    :precondition (and
      (robotAtLocation ?robot ?location)
      (robotAtSurface ?robot ?surface)
      (surfaceInLocation ?surface ?location)
      (objectOnSurface ?object ?surface)
      (handEmpty ?robot)
    )
    :effect (and
      (robotHolding ?robot ?object)
      (not (handEmpty ?robot))
      (not (objectOnSurface ?object ?surface))
    )
  )

  (:action place
    :parameters (?robot - Robot ?object - Manipulation_Object ?location - Location ?surface - Surface)
    :precondition (and
      (robotAtLocation ?robot ?location)
      (robotAtSurface ?robot ?surface)
      (surfaceInLocation ?surface ?location)
      (robotHolding ?robot ?object)
    )
    :effect (and
      (not (robotHolding ?robot ?object))
      (handEmpty ?robot)
      (objectOnSurface ?object ?surface)
    )
  )
)
