import actions from './actions';
import mutations from './mutations';
import getters from './getters';

const state = {
    errors:[],
    is_errors:false,

}

export default{
    state,
    getters,
    actions,
    mutations
}