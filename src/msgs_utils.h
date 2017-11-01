#ifndef planning_execution_msgs_utils_h__guard
#define planning_msgs_utils_h__guard

#include "actasp/AspFluent.h"
#include "actasp/AspRule.h"
#include "actasp/AnswerSet.h"

namespace bwi_krexec {

struct TranslateFluent {
  
 actasp::AspFluent operator()(const bwi_kr_execution::AspFluent& bwiFluent);
 bwi_kr_execution::AspFluent operator()(const actasp::AspFluent& actaspFluent);
};

struct TranslateRule {
  actasp::AspRule operator()(const bwi_kr_execution::AspRule& bwiRule);
  bwi_kr_execution::AspRule operator()(const actasp::AspRule& actaspRule);

};

struct TranslateAnswerSet {
  actasp::AnswerSet operator()(const bwi_kr_execution::AnswerSet& bwiAnswerSet);
  bwi_kr_execution::AnswerSet operator()(const actasp::AnswerSet& actaspAnswerSet);
  
};

}


#endif