
(define (problem generated_problem)

(:domain main_demo)

(:objects

	madar tiago - robot
	table fridge cupboard sink - location
	cupboard_bottom_shelf cupboard_top_shelf fridge_top_shelf table_top sink_basin fridge_door_rack - surface
	can1 knife1 glass1 bolt1 glass2 - manipulation_object
)

(:init
	(handEmpty madar)
	(handEmpty tiago)
	(objectOnSurface bolt1 table_top)
	(objectOnSurface can1 table_top)
	(objectOnSurface glass1 table_top)
	(objectOnSurface glass2 table_top)
	(objectOnSurface knife1 table_top)
	(robotAtLocation madar cupboard)
	(robotAtLocation tiago table)
	(robotAtSurface madar cupboard_bottom_shelf)
	(robotAtSurface tiago table_top)
	(surfaceInLocation cupboard_bottom_shelf cupboard)
	(surfaceInLocation cupboard_top_shelf cupboard)
	(surfaceInLocation fridge_door_rack fridge)
	(surfaceInLocation fridge_top_shelf fridge)
	(surfaceInLocation sink_basin sink)
	(surfaceInLocation table_top table)
)

(:goal
	(and
	(objectOnSurface glass1 sink_basin)
	)
)

)