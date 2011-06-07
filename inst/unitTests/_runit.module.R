# Unit tests for stat functions.
#
# Copyright (C) 2011 Renaud Gaujoux
# 
# This file is part of RcppOctave.
#
# RcppOctave is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# RcppOctave is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with RcppOctave.  If not, see <http://www.gnu.org/licenses/>.

#' Unit test for o_setseed
test.o_set.seed <- function(){
	
	set.seed(123)
	o_set.seed(123)
	#message("\nR seed: ", paste(head(.Random.seed, 20), collapse=', '))
	#message("\nOctave seed: ", paste(head(o_Random.seed(), 20), collapse=', '))
	checkIdentical( .Random.seed, o_Random.seed(), ".Random.seed are identical after using respective set.seed()")	
}
