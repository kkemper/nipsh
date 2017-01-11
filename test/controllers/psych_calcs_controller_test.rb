require 'test_helper'

class PsychCalcsControllerTest < ActionController::TestCase
  setup do
    @psych_calc = psych_calcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:psych_calcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create psych_calc" do
    assert_difference('PsychCalc.count') do
      post :create, psych_calc: { a: @psych_calc.a, aas: @psych_calc.aas, aggr: @psych_calc.aggr, ang: @psych_calc.ang, anx: @psych_calc.anx, aps: @psych_calc.aps, asp: @psych_calc.asp, biz: @psych_calc.biz, cyn: @psych_calc.cyn, dep: @psych_calc.dep, disc: @psych_calc.disc, do: @psych_calc.do, es: @psych_calc.es, fam: @psych_calc.fam, frs: @psych_calc.frs, hea: @psych_calc.hea, ho: @psych_calc.ho, intr: @psych_calc.intr, k: @psych_calc.k, l: @psych_calc.l, lse: @psych_calc.lse, mac_r: @psych_calc.mac_r, mds: @psych_calc.mds, mt: @psych_calc.mt, nege: @psych_calc.nege, o_h: @psych_calc.o_h, obs: @psych_calc.obs, pk: @psych_calc.pk, psyc: @psych_calc.psyc, r: @psych_calc.r, rc1: @psych_calc.rc1, rc2: @psych_calc.rc2, rc3: @psych_calc.rc3, rc4: @psych_calc.rc4, rc6: @psych_calc.rc6, rc7: @psych_calc.rc7, rc8: @psych_calc.rc8, rc9: @psych_calc.rc9, rcd: @psych_calc.rcd, re: @psych_calc.re, research_id: @psych_calc.research_id, s: @psych_calc.s, scale_0: @psych_calc.scale_0, scale_1: @psych_calc.scale_1, scale_2: @psych_calc.scale_2, scale_3: @psych_calc.scale_3, scale_4: @psych_calc.scale_4, scale_6: @psych_calc.scale_6, scale_7: @psych_calc.scale_7, scale_8: @psych_calc.scale_8, scale_9: @psych_calc.scale_9, sod: @psych_calc.sod, tpa: @psych_calc.tpa, trt: @psych_calc.trt, wrk: @psych_calc.wrk }
    end

    assert_redirected_to psych_calc_path(assigns(:psych_calc))
  end

  test "should show psych_calc" do
    get :show, id: @psych_calc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @psych_calc
    assert_response :success
  end

  test "should update psych_calc" do
    patch :update, id: @psych_calc, psych_calc: { a: @psych_calc.a, aas: @psych_calc.aas, aggr: @psych_calc.aggr, ang: @psych_calc.ang, anx: @psych_calc.anx, aps: @psych_calc.aps, asp: @psych_calc.asp, biz: @psych_calc.biz, cyn: @psych_calc.cyn, dep: @psych_calc.dep, disc: @psych_calc.disc, do: @psych_calc.do, es: @psych_calc.es, fam: @psych_calc.fam, frs: @psych_calc.frs, hea: @psych_calc.hea, ho: @psych_calc.ho, intr: @psych_calc.intr, k: @psych_calc.k, l: @psych_calc.l, lse: @psych_calc.lse, mac_r: @psych_calc.mac_r, mds: @psych_calc.mds, mt: @psych_calc.mt, nege: @psych_calc.nege, o_h: @psych_calc.o_h, obs: @psych_calc.obs, pk: @psych_calc.pk, psyc: @psych_calc.psyc, r: @psych_calc.r, rc1: @psych_calc.rc1, rc2: @psych_calc.rc2, rc3: @psych_calc.rc3, rc4: @psych_calc.rc4, rc6: @psych_calc.rc6, rc7: @psych_calc.rc7, rc8: @psych_calc.rc8, rc9: @psych_calc.rc9, rcd: @psych_calc.rcd, re: @psych_calc.re, research_id: @psych_calc.research_id, s: @psych_calc.s, scale_0: @psych_calc.scale_0, scale_1: @psych_calc.scale_1, scale_2: @psych_calc.scale_2, scale_3: @psych_calc.scale_3, scale_4: @psych_calc.scale_4, scale_6: @psych_calc.scale_6, scale_7: @psych_calc.scale_7, scale_8: @psych_calc.scale_8, scale_9: @psych_calc.scale_9, sod: @psych_calc.sod, tpa: @psych_calc.tpa, trt: @psych_calc.trt, wrk: @psych_calc.wrk }
    assert_redirected_to psych_calc_path(assigns(:psych_calc))
  end

  test "should destroy psych_calc" do
    assert_difference('PsychCalc.count', -1) do
      delete :destroy, id: @psych_calc
    end

    assert_redirected_to psych_calcs_path
  end
end
