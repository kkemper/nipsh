class PsychCalcsController < InheritedResources::Base

  private

    def psych_calc_params
      params.require(:psych_calc).permit(:research_id, :l, :k, :s, :scale_1, :scale_2, :scale_3, :scale_4, :scale_6, :scale_7, :scale_8, :scale_9, :scale_0, :rcd, :rc1, :rc2, :rc3, :rc4, :rc6, :rc7, :rc8, :rc9, :anx, :frs, :obs, :dep, :hea, :biz, :ang, :cyn, :asp, :tpa, :lse, :sod, :fam, :wrk, :trt, :a, :r, :es, :do, :re, :mt, :pk, :mds, :ho, :o_h, :mac_r, :aas, :aps, :aggr, :psyc, :disc, :nege, :intr)
    end
end

