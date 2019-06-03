(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32) (result i64)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32) (result i32)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i64 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (func $__wasm_call_ctors (type 3))
  (func $_ZN4core6result13unwrap_failed17hee11fad6ab977fa1E (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 52
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i32.const 36
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 2
    i32.store offset=44
    local.get 2
    i64.const 2
    i64.store offset=20 align=4
    local.get 2
    i32.const 1052256
    i32.store offset=16
    local.get 2
    local.get 2
    i32.const 56
    i32.add
    i32.store offset=48
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.const 40
    i32.add
    i32.store offset=32
    local.get 2
    i32.const 16
    i32.add
    i32.const 1052272
    call $_ZN4core9panicking9panic_fmt17h48f78e79a0848c36E
    unreachable)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h910ad67389bca4d8E (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc4a26b93d9a32a9fE)
  (func $sm_alloc (type 4) (param i32) (result i64)
    block  ;; label = @1
      local.get 0
      i32.const -3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      call $__rust_alloc
      i64.extend_i32_u
      return
    end
    i32.const 1048599
    i32.const 43
    call $_ZN4core6result13unwrap_failed17hee11fad6ab977fa1E
    unreachable)
  (func $__rust_alloc (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__rdl_alloc)
  (func $__rust_dealloc (type 5) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rdl_dealloc)
  (func $__rust_realloc (type 6) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__rdl_realloc)
  (func $_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$7reserve17h93d9c13a0e94b45aE (type 0) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 2
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          local.get 1
          i32.add
          local.tee 1
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 1
          i32.shl
          local.tee 3
          local.get 1
          local.get 1
          local.get 3
          i32.lt_u
          select
          local.tee 1
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.get 2
              i32.const 1
              local.get 1
              call $__rust_realloc
              local.tee 2
              i32.eqz
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 1
            i32.const 1
            call $__rust_alloc
            local.tee 2
            br_if 2 (;@2;)
          end
          local.get 1
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h487dcee887caabd9E
          unreachable
        end
        call $_ZN5alloc7raw_vec17capacity_overflow17ha96a6e7a6e4b649bE
        unreachable
      end
      local.get 0
      local.get 2
      i32.store
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      i32.store
    end)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h15cd4d9aaa204d04E (type 4) (param i32) (result i64)
    i64.const -1059640658066352774)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h7fe5d99e30b106b6E (type 4) (param i32) (result i64)
    i64.const 277435119699502768)
  (func $_ZN38_$LT$core..option..Option$LT$T$GT$$GT$6unwrap17hd83814aead7a5518E (type 7) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      return
    end
    i32.const 1052288
    call $_ZN4core9panicking5panic17h8a3e045054bc310aE
    unreachable)
  (func $_ZN38_$LT$core..option..Option$LT$T$GT$$GT$6unwrap17hee9df7d1ba618a89E (type 7) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      return
    end
    i32.const 1052288
    call $_ZN4core9panicking5panic17h8a3e045054bc310aE
    unreachable)
  (func $_ZN4core3ptr18real_drop_in_place17h19b3d105b11ade91E (type 8) (param i32))
  (func $_ZN4core3ptr18real_drop_in_place17h7a4ed38861e1e278E (type 8) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr18real_drop_in_place17h9e77c4a573ca6872E (type 8) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hc1f8f1c175ef9aceE (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.ge_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 3
          local.get 0
          i32.load offset=4
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.const 1
          call $_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$7reserve17h93d9c13a0e94b45aE
          local.get 0
          i32.const 8
          i32.add
          i32.load
          local.set 3
        end
        local.get 0
        i32.load
        local.get 3
        i32.add
        local.get 1
        i32.store8
        local.get 0
        i32.const 8
        i32.add
        local.tee 0
        local.get 0
        i32.load
        i32.const 1
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.store offset=12
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 31
          i32.and
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 15
          i32.and
          i32.const 224
          i32.or
          i32.store8 offset=12
          i32.const 3
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=15
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8 offset=12
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=14
        local.get 2
        local.get 1
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        i32.const 4
        local.set 1
      end
      local.get 0
      local.get 1
      call $_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$7reserve17h93d9c13a0e94b45aE
      local.get 0
      local.get 0
      i32.load offset=8
      local.tee 3
      local.get 1
      i32.add
      i32.store offset=8
      local.get 3
      local.get 0
      i32.load
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $memcpy
      drop
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hdcc15e6a72bba03dE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1052312
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h36bee7754be224fbE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2d5b1ed2c8a846ceE (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 0
    local.get 2
    call $_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$7reserve17h93d9c13a0e94b45aE
    local.get 0
    local.get 0
    i32.load offset=8
    local.tee 3
    local.get 2
    i32.add
    i32.store offset=8
    local.get 3
    local.get 0
    i32.load
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    i32.const 0)
  (func $_ZN76_$LT$std..sys_common..thread_local..Key$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7a0025388351677E (type 8) (param i32))
  (func $_ZN3std5alloc24default_alloc_error_hook17hab6f4c336f53ec69E (type 0) (param i32 i32))
  (func $rust_oom (type 0) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.const 0
    i32.load offset=1054424
    local.tee 2
    i32.const 3
    local.get 2
    select
    call_indirect (type 0)
    unreachable
    unreachable)
  (func $__rdl_alloc (type 2) (param i32 i32) (result i32)
    block  ;; label = @1
      i32.const 1054440
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h56c8dcb8402cde36E
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 1054440
      local.get 1
      local.get 0
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc8memalign17h474fa91a40312fd9E
      return
    end
    i32.const 1054440
    local.get 0
    call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h884b4d5512fdfd0dE)
  (func $__rdl_dealloc (type 5) (param i32 i32 i32)
    i32.const 1054440
    local.get 0
    call $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17hfda8cc57773548eaE)
  (func $__rdl_realloc (type 6) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1054440
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h56c8dcb8402cde36E
            local.get 2
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 1054440
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h56c8dcb8402cde36E
            local.get 2
            i32.ge_u
            br_if 1 (;@3;)
            i32.const 1054440
            local.get 2
            local.get 3
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc8memalign17h474fa91a40312fd9E
            local.tee 2
            i32.eqz
            br_if 2 (;@2;)
            br 3 (;@1;)
          end
          i32.const 1054440
          local.get 0
          local.get 3
          call $_ZN8dlmalloc8dlmalloc8Dlmalloc7realloc17hf3625de3a8ba5795E
          return
        end
        i32.const 1054440
        local.get 3
        call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h884b4d5512fdfd0dE
        local.tee 2
        br_if 1 (;@1;)
      end
      i32.const 0
      return
    end
    local.get 2
    local.get 0
    local.get 3
    local.get 1
    local.get 1
    local.get 3
    i32.gt_u
    select
    call $memcpy
    local.set 2
    i32.const 1054440
    local.get 0
    call $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17hfda8cc57773548eaE
    local.get 2)
  (func $rust_begin_unwind (type 8) (param i32)
    local.get 0
    call $_ZN3std9panicking18continue_panic_fmt17hb0255aee912b75c3E
    unreachable)
  (func $_ZN3std9panicking18continue_panic_fmt17hb0255aee912b75c3E (type 8) (param i32)
    (local i32 i32 i32 i64 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    call $_ZN4core5panic9PanicInfo8location17h4457b5ae94621235E
    call $_ZN38_$LT$core..option..Option$LT$T$GT$$GT$6unwrap17hee9df7d1ba618a89E
    local.set 2
    local.get 0
    call $_ZN4core5panic9PanicInfo7message17h887141be22f18ef9E
    call $_ZN38_$LT$core..option..Option$LT$T$GT$$GT$6unwrap17hd83814aead7a5518E
    local.set 3
    local.get 1
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core5panic8Location4file17h5ba102e8b1dd1f0cE
    local.get 1
    i64.load offset=8
    local.set 4
    local.get 2
    call $_ZN4core5panic8Location4line17h8cbfc66d2bfba14bE
    local.set 5
    local.get 1
    local.get 2
    call $_ZN4core5panic8Location6column17h0d2f2a30e460503fE
    i32.store offset=28
    local.get 1
    local.get 5
    i32.store offset=24
    local.get 1
    local.get 4
    i64.store offset=16
    local.get 1
    i32.const 0
    i32.store offset=36
    local.get 1
    local.get 3
    i32.store offset=32
    local.get 1
    i32.const 32
    i32.add
    i32.const 1052352
    local.get 0
    call $_ZN4core5panic9PanicInfo7message17h887141be22f18ef9E
    local.get 1
    i32.const 16
    i32.add
    call $_ZN3std9panicking20rust_panic_with_hook17h158e96cce4c89553E
    unreachable)
  (func $_ZN3std9panicking20rust_panic_with_hook17h158e96cce4c89553E (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 4
    global.set 0
    i32.const 1
    local.set 5
    local.get 3
    i32.load offset=12
    local.set 6
    local.get 3
    i32.load offset=8
    local.set 7
    local.get 3
    i32.load offset=4
    local.set 8
    local.get 3
    i32.load
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1054896
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.load offset=1054900
            i32.const 1
            i32.add
            local.tee 5
            i32.store offset=1054900
            local.get 5
            i32.const 3
            i32.lt_u
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 0
          i64.const 4294967297
          i64.store offset=1054896
        end
        local.get 4
        i32.const 48
        i32.add
        local.get 3
        local.get 8
        local.get 7
        local.get 6
        call $_ZN4core5panic8Location20internal_constructor17hd392d73ecb76f1a1E
        local.get 4
        i32.const 36
        i32.add
        local.get 4
        i32.const 56
        i32.add
        i64.load
        i64.store align=4
        local.get 4
        local.get 2
        i32.store offset=24
        local.get 4
        i32.const 1052336
        i32.store offset=20
        local.get 4
        i32.const 1048644
        i32.store offset=16
        local.get 4
        local.get 4
        i64.load offset=48
        i64.store offset=28 align=4
        i32.const 0
        i32.load offset=1054428
        local.tee 3
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 0
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        i32.store offset=1054428
        block  ;; label = @3
          i32.const 0
          i32.load offset=1054436
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1054432
          local.set 3
          local.get 4
          i32.const 8
          i32.add
          local.get 0
          local.get 1
          i32.load offset=16
          call_indirect (type 0)
          local.get 4
          local.get 4
          i64.load offset=8
          i64.store offset=16
          local.get 3
          local.get 4
          i32.const 16
          i32.add
          local.get 2
          i32.load offset=12
          call_indirect (type 0)
          i32.const 0
          i32.load offset=1054428
          local.set 3
        end
        i32.const 0
        local.get 3
        i32.const -1
        i32.add
        i32.store offset=1054428
        local.get 5
        i32.const 2
        i32.lt_u
        br_if 1 (;@1;)
      end
      unreachable
      unreachable
    end
    local.get 0
    local.get 1
    call $rust_panic
    unreachable)
  (func $_ZN103_$LT$std..panicking..continue_panic_fmt..PanicPayload$LT$$u27$a$GT$$u20$as$u20$core..panic..BoxMeUp$GT$9box_me_up17h3b8dd5cbc181c2d7E (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      local.tee 3
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 3
      local.get 2
      i32.const 0
      i32.store offset=16
      local.get 2
      i64.const 1
      i64.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 3
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      local.get 3
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 3
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      i32.const 1052312
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17h36bee7754be224fbE
      drop
      local.get 4
      local.get 2
      i32.load offset=16
      i32.store
      local.get 2
      local.get 2
      i64.load offset=8
      i64.store offset=24
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.tee 3
        i32.load
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 6
        i32.const 1
        call $__rust_dealloc
      end
      local.get 3
      local.get 2
      i64.load offset=24
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
      local.get 3
      i32.load
      local.set 3
    end
    local.get 1
    i32.const 1
    i32.store offset=4
    local.get 1
    i32.const 12
    i32.add
    i32.load
    local.set 4
    local.get 1
    i32.const 8
    i32.add
    local.tee 1
    i32.load
    local.set 5
    local.get 1
    i64.const 0
    i64.store align=4
    block  ;; label = @1
      i32.const 12
      i32.const 4
      call $__rust_alloc
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      i32.store offset=8
      local.get 1
      local.get 5
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      local.get 0
      i32.const 1052372
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 2
      i32.const 48
      i32.add
      global.set 0
      return
    end
    i32.const 12
    i32.const 4
    call $_ZN5alloc5alloc18handle_alloc_error17h487dcee887caabd9E
    unreachable)
  (func $_ZN103_$LT$std..panicking..continue_panic_fmt..PanicPayload$LT$$u27$a$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17h20a7c76950e07ff7E (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.const 4
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.set 4
      local.get 2
      i32.const 0
      i32.store offset=16
      local.get 2
      i64.const 1
      i64.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.tee 5
      local.get 4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 4
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      i32.const 1052312
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17h36bee7754be224fbE
      drop
      local.get 5
      local.get 2
      i32.load offset=16
      i32.store
      local.get 2
      local.get 2
      i64.load offset=8
      i64.store offset=24
      block  ;; label = @2
        local.get 3
        i32.load
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 1
        i32.const 1
        call $__rust_dealloc
      end
      local.get 3
      local.get 2
      i64.load offset=24
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      local.get 5
      i32.load
      i32.store
    end
    local.get 0
    i32.const 1052372
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func $rust_panic (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $__rust_start_panic
    drop
    unreachable
    unreachable)
  (func $__rust_start_panic (type 7) (param i32) (result i32)
    unreachable
    unreachable)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc16malloc_alignment17h56c8dcb8402cde36E (type 7) (param i32) (result i32)
    i32.const 8)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h884b4d5512fdfd0dE (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              local.get 1
                                                                              i32.const 244
                                                                              i32.gt_u
                                                                              br_if 0 (;@37;)
                                                                              local.get 0
                                                                              i32.load
                                                                              local.tee 2
                                                                              i32.const 16
                                                                              local.get 1
                                                                              i32.const 11
                                                                              i32.add
                                                                              i32.const -8
                                                                              i32.and
                                                                              local.get 1
                                                                              i32.const 11
                                                                              i32.lt_u
                                                                              select
                                                                              local.tee 3
                                                                              i32.const 3
                                                                              i32.shr_u
                                                                              local.tee 4
                                                                              i32.const 31
                                                                              i32.and
                                                                              local.tee 5
                                                                              i32.shr_u
                                                                              local.tee 1
                                                                              i32.const 3
                                                                              i32.and
                                                                              i32.eqz
                                                                              br_if 1 (;@36;)
                                                                              local.get 0
                                                                              local.get 1
                                                                              i32.const -1
                                                                              i32.xor
                                                                              i32.const 1
                                                                              i32.and
                                                                              local.get 4
                                                                              i32.add
                                                                              local.tee 3
                                                                              i32.const 3
                                                                              i32.shl
                                                                              i32.add
                                                                              local.tee 5
                                                                              i32.const 16
                                                                              i32.add
                                                                              i32.load
                                                                              local.tee 1
                                                                              i32.const 8
                                                                              i32.add
                                                                              local.set 6
                                                                              local.get 1
                                                                              i32.load offset=8
                                                                              local.tee 4
                                                                              local.get 5
                                                                              i32.const 8
                                                                              i32.add
                                                                              local.tee 5
                                                                              i32.eq
                                                                              br_if 2 (;@35;)
                                                                              local.get 4
                                                                              local.get 5
                                                                              i32.store offset=12
                                                                              local.get 5
                                                                              i32.const 8
                                                                              i32.add
                                                                              local.get 4
                                                                              i32.store
                                                                              br 3 (;@34;)
                                                                            end
                                                                            i32.const 0
                                                                            local.set 2
                                                                            local.get 1
                                                                            i32.const -65587
                                                                            i32.ge_u
                                                                            br_if 28 (;@8;)
                                                                            local.get 1
                                                                            i32.const 11
                                                                            i32.add
                                                                            local.tee 1
                                                                            i32.const -8
                                                                            i32.and
                                                                            local.set 3
                                                                            local.get 0
                                                                            i32.load offset=4
                                                                            local.tee 7
                                                                            i32.eqz
                                                                            br_if 9 (;@27;)
                                                                            i32.const 0
                                                                            local.set 8
                                                                            block  ;; label = @37
                                                                              local.get 1
                                                                              i32.const 8
                                                                              i32.shr_u
                                                                              local.tee 1
                                                                              i32.eqz
                                                                              br_if 0 (;@37;)
                                                                              i32.const 31
                                                                              local.set 8
                                                                              local.get 3
                                                                              i32.const 16777215
                                                                              i32.gt_u
                                                                              br_if 0 (;@37;)
                                                                              local.get 3
                                                                              i32.const 38
                                                                              local.get 1
                                                                              i32.clz
                                                                              local.tee 1
                                                                              i32.sub
                                                                              i32.const 31
                                                                              i32.and
                                                                              i32.shr_u
                                                                              i32.const 1
                                                                              i32.and
                                                                              i32.const 31
                                                                              local.get 1
                                                                              i32.sub
                                                                              i32.const 1
                                                                              i32.shl
                                                                              i32.or
                                                                              local.set 8
                                                                            end
                                                                            i32.const 0
                                                                            local.get 3
                                                                            i32.sub
                                                                            local.set 4
                                                                            local.get 0
                                                                            local.get 8
                                                                            i32.const 2
                                                                            i32.shl
                                                                            i32.add
                                                                            i32.const 272
                                                                            i32.add
                                                                            i32.load
                                                                            local.tee 1
                                                                            i32.eqz
                                                                            br_if 6 (;@30;)
                                                                            i32.const 0
                                                                            local.set 5
                                                                            local.get 3
                                                                            i32.const 0
                                                                            i32.const 25
                                                                            local.get 8
                                                                            i32.const 1
                                                                            i32.shr_u
                                                                            i32.sub
                                                                            i32.const 31
                                                                            i32.and
                                                                            local.get 8
                                                                            i32.const 31
                                                                            i32.eq
                                                                            select
                                                                            i32.shl
                                                                            local.set 2
                                                                            i32.const 0
                                                                            local.set 6
                                                                            loop  ;; label = @37
                                                                              block  ;; label = @38
                                                                                local.get 1
                                                                                i32.load offset=4
                                                                                i32.const -8
                                                                                i32.and
                                                                                local.tee 9
                                                                                local.get 3
                                                                                i32.lt_u
                                                                                br_if 0 (;@38;)
                                                                                local.get 9
                                                                                local.get 3
                                                                                i32.sub
                                                                                local.tee 9
                                                                                local.get 4
                                                                                i32.ge_u
                                                                                br_if 0 (;@38;)
                                                                                local.get 9
                                                                                local.set 4
                                                                                local.get 1
                                                                                local.set 6
                                                                                local.get 9
                                                                                i32.eqz
                                                                                br_if 6 (;@32;)
                                                                              end
                                                                              local.get 1
                                                                              i32.const 20
                                                                              i32.add
                                                                              i32.load
                                                                              local.tee 9
                                                                              local.get 5
                                                                              local.get 9
                                                                              local.get 1
                                                                              local.get 2
                                                                              i32.const 29
                                                                              i32.shr_u
                                                                              i32.const 4
                                                                              i32.and
                                                                              i32.add
                                                                              i32.const 16
                                                                              i32.add
                                                                              i32.load
                                                                              local.tee 1
                                                                              i32.ne
                                                                              select
                                                                              local.get 5
                                                                              local.get 9
                                                                              select
                                                                              local.set 5
                                                                              local.get 2
                                                                              i32.const 1
                                                                              i32.shl
                                                                              local.set 2
                                                                              local.get 1
                                                                              br_if 0 (;@37;)
                                                                            end
                                                                            local.get 5
                                                                            i32.eqz
                                                                            br_if 5 (;@31;)
                                                                            local.get 5
                                                                            local.set 1
                                                                            br 7 (;@29;)
                                                                          end
                                                                          local.get 3
                                                                          local.get 0
                                                                          i32.load offset=400
                                                                          i32.le_u
                                                                          br_if 8 (;@27;)
                                                                          local.get 1
                                                                          i32.eqz
                                                                          br_if 2 (;@33;)
                                                                          local.get 0
                                                                          local.get 1
                                                                          local.get 5
                                                                          i32.shl
                                                                          i32.const 2
                                                                          local.get 5
                                                                          i32.shl
                                                                          local.tee 1
                                                                          i32.const 0
                                                                          local.get 1
                                                                          i32.sub
                                                                          i32.or
                                                                          i32.and
                                                                          local.tee 1
                                                                          i32.const 0
                                                                          local.get 1
                                                                          i32.sub
                                                                          i32.and
                                                                          i32.ctz
                                                                          local.tee 4
                                                                          i32.const 3
                                                                          i32.shl
                                                                          i32.add
                                                                          local.tee 6
                                                                          i32.const 16
                                                                          i32.add
                                                                          i32.load
                                                                          local.tee 1
                                                                          i32.load offset=8
                                                                          local.tee 5
                                                                          local.get 6
                                                                          i32.const 8
                                                                          i32.add
                                                                          local.tee 6
                                                                          i32.eq
                                                                          br_if 10 (;@25;)
                                                                          local.get 5
                                                                          local.get 6
                                                                          i32.store offset=12
                                                                          local.get 6
                                                                          i32.const 8
                                                                          i32.add
                                                                          local.get 5
                                                                          i32.store
                                                                          br 11 (;@24;)
                                                                        end
                                                                        local.get 0
                                                                        local.get 2
                                                                        i32.const -2
                                                                        local.get 3
                                                                        i32.rotl
                                                                        i32.and
                                                                        i32.store
                                                                      end
                                                                      local.get 1
                                                                      local.get 3
                                                                      i32.const 3
                                                                      i32.shl
                                                                      local.tee 3
                                                                      i32.const 3
                                                                      i32.or
                                                                      i32.store offset=4
                                                                      local.get 1
                                                                      local.get 3
                                                                      i32.add
                                                                      local.tee 1
                                                                      local.get 1
                                                                      i32.load offset=4
                                                                      i32.const 1
                                                                      i32.or
                                                                      i32.store offset=4
                                                                      local.get 6
                                                                      return
                                                                    end
                                                                    local.get 0
                                                                    i32.load offset=4
                                                                    local.tee 1
                                                                    i32.eqz
                                                                    br_if 5 (;@27;)
                                                                    local.get 0
                                                                    local.get 1
                                                                    i32.const 0
                                                                    local.get 1
                                                                    i32.sub
                                                                    i32.and
                                                                    i32.ctz
                                                                    i32.const 2
                                                                    i32.shl
                                                                    i32.add
                                                                    i32.const 272
                                                                    i32.add
                                                                    i32.load
                                                                    local.tee 6
                                                                    i32.load offset=4
                                                                    i32.const -8
                                                                    i32.and
                                                                    local.get 3
                                                                    i32.sub
                                                                    local.set 5
                                                                    local.get 6
                                                                    local.set 2
                                                                    local.get 6
                                                                    i32.load offset=16
                                                                    local.tee 1
                                                                    i32.eqz
                                                                    br_if 20 (;@12;)
                                                                    i32.const 1
                                                                    local.set 4
                                                                    br 21 (;@11;)
                                                                  end
                                                                  i32.const 0
                                                                  local.set 4
                                                                  local.get 1
                                                                  local.set 6
                                                                  br 2 (;@29;)
                                                                end
                                                                local.get 6
                                                                br_if 2 (;@28;)
                                                              end
                                                              i32.const 0
                                                              local.set 6
                                                              i32.const 2
                                                              local.get 8
                                                              i32.const 31
                                                              i32.and
                                                              i32.shl
                                                              local.tee 1
                                                              i32.const 0
                                                              local.get 1
                                                              i32.sub
                                                              i32.or
                                                              local.get 7
                                                              i32.and
                                                              local.tee 1
                                                              i32.eqz
                                                              br_if 2 (;@27;)
                                                              local.get 0
                                                              local.get 1
                                                              i32.const 0
                                                              local.get 1
                                                              i32.sub
                                                              i32.and
                                                              i32.ctz
                                                              i32.const 2
                                                              i32.shl
                                                              i32.add
                                                              i32.const 272
                                                              i32.add
                                                              i32.load
                                                              local.tee 1
                                                              i32.eqz
                                                              br_if 2 (;@27;)
                                                            end
                                                            loop  ;; label = @29
                                                              local.get 1
                                                              i32.load offset=4
                                                              i32.const -8
                                                              i32.and
                                                              local.tee 5
                                                              local.get 3
                                                              i32.ge_u
                                                              local.get 5
                                                              local.get 3
                                                              i32.sub
                                                              local.tee 9
                                                              local.get 4
                                                              i32.lt_u
                                                              i32.and
                                                              local.set 2
                                                              block  ;; label = @30
                                                                local.get 1
                                                                i32.load offset=16
                                                                local.tee 5
                                                                br_if 0 (;@30;)
                                                                local.get 1
                                                                i32.const 20
                                                                i32.add
                                                                i32.load
                                                                local.set 5
                                                              end
                                                              local.get 1
                                                              local.get 6
                                                              local.get 2
                                                              select
                                                              local.set 6
                                                              local.get 9
                                                              local.get 4
                                                              local.get 2
                                                              select
                                                              local.set 4
                                                              local.get 5
                                                              local.set 1
                                                              local.get 5
                                                              br_if 0 (;@29;)
                                                            end
                                                            local.get 6
                                                            i32.eqz
                                                            br_if 1 (;@27;)
                                                          end
                                                          local.get 0
                                                          i32.load offset=400
                                                          local.tee 1
                                                          local.get 3
                                                          i32.lt_u
                                                          br_if 1 (;@26;)
                                                          local.get 4
                                                          local.get 1
                                                          local.get 3
                                                          i32.sub
                                                          i32.lt_u
                                                          br_if 1 (;@26;)
                                                        end
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                local.get 0
                                                                i32.load offset=400
                                                                local.tee 4
                                                                local.get 3
                                                                i32.ge_u
                                                                br_if 0 (;@30;)
                                                                local.get 0
                                                                i32.load offset=404
                                                                local.tee 1
                                                                local.get 3
                                                                i32.le_u
                                                                br_if 1 (;@29;)
                                                                local.get 0
                                                                i32.const 404
                                                                i32.add
                                                                local.get 1
                                                                local.get 3
                                                                i32.sub
                                                                local.tee 4
                                                                i32.store
                                                                local.get 0
                                                                local.get 0
                                                                i32.load offset=412
                                                                local.tee 1
                                                                local.get 3
                                                                i32.add
                                                                local.tee 5
                                                                i32.store offset=412
                                                                local.get 5
                                                                local.get 4
                                                                i32.const 1
                                                                i32.or
                                                                i32.store offset=4
                                                                local.get 1
                                                                local.get 3
                                                                i32.const 3
                                                                i32.or
                                                                i32.store offset=4
                                                                local.get 1
                                                                i32.const 8
                                                                i32.add
                                                                return
                                                              end
                                                              local.get 0
                                                              i32.load offset=408
                                                              local.set 1
                                                              local.get 4
                                                              local.get 3
                                                              i32.sub
                                                              local.tee 5
                                                              i32.const 16
                                                              i32.ge_u
                                                              br_if 1 (;@28;)
                                                              local.get 0
                                                              i32.const 408
                                                              i32.add
                                                              i32.const 0
                                                              i32.store
                                                              local.get 0
                                                              i32.const 400
                                                              i32.add
                                                              i32.const 0
                                                              i32.store
                                                              local.get 1
                                                              local.get 4
                                                              i32.const 3
                                                              i32.or
                                                              i32.store offset=4
                                                              local.get 1
                                                              local.get 4
                                                              i32.add
                                                              local.tee 4
                                                              i32.const 4
                                                              i32.add
                                                              local.set 3
                                                              local.get 4
                                                              i32.load offset=4
                                                              i32.const 1
                                                              i32.or
                                                              local.set 4
                                                              br 2 (;@27;)
                                                            end
                                                            i32.const 0
                                                            local.set 2
                                                            local.get 3
                                                            i32.const 65583
                                                            i32.add
                                                            local.tee 4
                                                            i32.const 16
                                                            i32.shr_u
                                                            memory.grow
                                                            local.tee 1
                                                            i32.const -1
                                                            i32.eq
                                                            br_if 20 (;@8;)
                                                            local.get 1
                                                            i32.const 16
                                                            i32.shl
                                                            local.tee 6
                                                            i32.eqz
                                                            br_if 20 (;@8;)
                                                            local.get 0
                                                            local.get 0
                                                            i32.load offset=416
                                                            local.get 4
                                                            i32.const -65536
                                                            i32.and
                                                            local.tee 8
                                                            i32.add
                                                            local.tee 1
                                                            i32.store offset=416
                                                            local.get 0
                                                            local.get 0
                                                            i32.load offset=420
                                                            local.tee 4
                                                            local.get 1
                                                            local.get 1
                                                            local.get 4
                                                            i32.lt_u
                                                            select
                                                            i32.store offset=420
                                                            local.get 0
                                                            i32.load offset=412
                                                            local.tee 4
                                                            i32.eqz
                                                            br_if 9 (;@19;)
                                                            local.get 0
                                                            i32.const 424
                                                            i32.add
                                                            local.tee 7
                                                            local.set 1
                                                            loop  ;; label = @29
                                                              local.get 1
                                                              i32.load
                                                              local.tee 5
                                                              local.get 1
                                                              i32.load offset=4
                                                              local.tee 9
                                                              i32.add
                                                              local.get 6
                                                              i32.eq
                                                              br_if 11 (;@18;)
                                                              local.get 1
                                                              i32.load offset=8
                                                              local.tee 1
                                                              br_if 0 (;@29;)
                                                              br 19 (;@10;)
                                                            end
                                                          end
                                                          local.get 0
                                                          i32.const 400
                                                          i32.add
                                                          local.get 5
                                                          i32.store
                                                          local.get 0
                                                          i32.const 408
                                                          i32.add
                                                          local.get 1
                                                          local.get 3
                                                          i32.add
                                                          local.tee 2
                                                          i32.store
                                                          local.get 2
                                                          local.get 5
                                                          i32.const 1
                                                          i32.or
                                                          i32.store offset=4
                                                          local.get 1
                                                          local.get 4
                                                          i32.add
                                                          local.get 5
                                                          i32.store
                                                          local.get 3
                                                          i32.const 3
                                                          i32.or
                                                          local.set 4
                                                          local.get 1
                                                          i32.const 4
                                                          i32.add
                                                          local.set 3
                                                        end
                                                        local.get 3
                                                        local.get 4
                                                        i32.store
                                                        local.get 1
                                                        i32.const 8
                                                        i32.add
                                                        return
                                                      end
                                                      local.get 0
                                                      local.get 6
                                                      call $_ZN8dlmalloc8dlmalloc8Dlmalloc18unlink_large_chunk17h0a23118361f9322fE
                                                      local.get 4
                                                      i32.const 15
                                                      i32.gt_u
                                                      br_if 2 (;@23;)
                                                      local.get 6
                                                      local.get 4
                                                      local.get 3
                                                      i32.add
                                                      local.tee 1
                                                      i32.const 3
                                                      i32.or
                                                      i32.store offset=4
                                                      local.get 6
                                                      local.get 1
                                                      i32.add
                                                      local.tee 1
                                                      local.get 1
                                                      i32.load offset=4
                                                      i32.const 1
                                                      i32.or
                                                      i32.store offset=4
                                                      br 12 (;@13;)
                                                    end
                                                    local.get 0
                                                    local.get 2
                                                    i32.const -2
                                                    local.get 4
                                                    i32.rotl
                                                    i32.and
                                                    i32.store
                                                  end
                                                  local.get 1
                                                  i32.const 8
                                                  i32.add
                                                  local.set 5
                                                  local.get 1
                                                  local.get 3
                                                  i32.const 3
                                                  i32.or
                                                  i32.store offset=4
                                                  local.get 1
                                                  local.get 3
                                                  i32.add
                                                  local.tee 2
                                                  local.get 4
                                                  i32.const 3
                                                  i32.shl
                                                  local.tee 4
                                                  local.get 3
                                                  i32.sub
                                                  local.tee 3
                                                  i32.const 1
                                                  i32.or
                                                  i32.store offset=4
                                                  local.get 1
                                                  local.get 4
                                                  i32.add
                                                  local.get 3
                                                  i32.store
                                                  local.get 0
                                                  i32.const 400
                                                  i32.add
                                                  local.tee 6
                                                  i32.load
                                                  local.tee 1
                                                  i32.eqz
                                                  br_if 3 (;@20;)
                                                  local.get 0
                                                  local.get 1
                                                  i32.const 3
                                                  i32.shr_u
                                                  local.tee 9
                                                  i32.const 3
                                                  i32.shl
                                                  i32.add
                                                  i32.const 8
                                                  i32.add
                                                  local.set 4
                                                  local.get 0
                                                  i32.load offset=408
                                                  local.set 1
                                                  local.get 0
                                                  i32.load
                                                  local.tee 8
                                                  i32.const 1
                                                  local.get 9
                                                  i32.const 31
                                                  i32.and
                                                  i32.shl
                                                  local.tee 9
                                                  i32.and
                                                  i32.eqz
                                                  br_if 1 (;@22;)
                                                  local.get 4
                                                  i32.load offset=8
                                                  local.set 9
                                                  br 2 (;@21;)
                                                end
                                                local.get 6
                                                local.get 3
                                                i32.const 3
                                                i32.or
                                                i32.store offset=4
                                                local.get 6
                                                local.get 3
                                                i32.add
                                                local.tee 1
                                                local.get 4
                                                i32.const 1
                                                i32.or
                                                i32.store offset=4
                                                local.get 1
                                                local.get 4
                                                i32.add
                                                local.get 4
                                                i32.store
                                                local.get 4
                                                i32.const 255
                                                i32.gt_u
                                                br_if 5 (;@17;)
                                                local.get 0
                                                local.get 4
                                                i32.const 3
                                                i32.shr_u
                                                local.tee 4
                                                i32.const 3
                                                i32.shl
                                                i32.add
                                                i32.const 8
                                                i32.add
                                                local.set 3
                                                local.get 0
                                                i32.load
                                                local.tee 5
                                                i32.const 1
                                                local.get 4
                                                i32.const 31
                                                i32.and
                                                i32.shl
                                                local.tee 4
                                                i32.and
                                                i32.eqz
                                                br_if 7 (;@15;)
                                                local.get 3
                                                i32.load offset=8
                                                local.set 4
                                                br 8 (;@14;)
                                              end
                                              local.get 0
                                              local.get 8
                                              local.get 9
                                              i32.or
                                              i32.store
                                              local.get 4
                                              local.set 9
                                            end
                                            local.get 4
                                            local.get 1
                                            i32.store offset=8
                                            local.get 9
                                            local.get 1
                                            i32.store offset=12
                                            local.get 1
                                            local.get 4
                                            i32.store offset=12
                                            local.get 1
                                            local.get 9
                                            i32.store offset=8
                                          end
                                          local.get 0
                                          local.get 2
                                          i32.store offset=408
                                          local.get 6
                                          local.get 3
                                          i32.store
                                          local.get 5
                                          return
                                        end
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 0
                                            i32.load offset=444
                                            local.tee 1
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 1
                                            local.get 6
                                            i32.le_u
                                            br_if 1 (;@19;)
                                          end
                                          local.get 0
                                          i32.const 444
                                          i32.add
                                          local.get 6
                                          i32.store
                                        end
                                        local.get 0
                                        i32.const 4095
                                        i32.store offset=448
                                        local.get 0
                                        local.get 6
                                        i32.store offset=424
                                        i32.const 0
                                        local.set 1
                                        local.get 0
                                        i32.const 436
                                        i32.add
                                        i32.const 0
                                        i32.store
                                        local.get 0
                                        i32.const 428
                                        i32.add
                                        local.get 8
                                        i32.store
                                        loop  ;; label = @19
                                          local.get 0
                                          local.get 1
                                          i32.add
                                          local.tee 4
                                          i32.const 16
                                          i32.add
                                          local.get 4
                                          i32.const 8
                                          i32.add
                                          local.tee 5
                                          i32.store
                                          local.get 4
                                          i32.const 20
                                          i32.add
                                          local.get 5
                                          i32.store
                                          local.get 1
                                          i32.const 8
                                          i32.add
                                          local.tee 1
                                          i32.const 256
                                          i32.ne
                                          br_if 0 (;@19;)
                                        end
                                        local.get 0
                                        i32.const 404
                                        i32.add
                                        local.get 8
                                        i32.const -40
                                        i32.add
                                        local.tee 1
                                        i32.store
                                        local.get 0
                                        i32.const 412
                                        i32.add
                                        local.get 6
                                        i32.store
                                        local.get 6
                                        local.get 1
                                        i32.const 1
                                        i32.or
                                        i32.store offset=4
                                        local.get 6
                                        local.get 1
                                        i32.add
                                        i32.const 40
                                        i32.store offset=4
                                        local.get 0
                                        i32.const 2097152
                                        i32.store offset=440
                                        br 9 (;@9;)
                                      end
                                      local.get 1
                                      i32.load offset=12
                                      i32.eqz
                                      br_if 1 (;@16;)
                                      br 7 (;@10;)
                                    end
                                    local.get 0
                                    local.get 1
                                    local.get 4
                                    call $_ZN8dlmalloc8dlmalloc8Dlmalloc18insert_large_chunk17h18115a8ed4a60d31E
                                    br 3 (;@13;)
                                  end
                                  local.get 6
                                  local.get 4
                                  i32.le_u
                                  br_if 5 (;@10;)
                                  local.get 5
                                  local.get 4
                                  i32.gt_u
                                  br_if 5 (;@10;)
                                  local.get 1
                                  i32.const 4
                                  i32.add
                                  local.get 9
                                  local.get 8
                                  i32.add
                                  i32.store
                                  local.get 0
                                  i32.const 412
                                  i32.add
                                  local.tee 1
                                  local.get 1
                                  i32.load
                                  local.tee 1
                                  i32.const 15
                                  i32.add
                                  i32.const -8
                                  i32.and
                                  local.tee 4
                                  i32.const -8
                                  i32.add
                                  local.tee 5
                                  i32.store
                                  local.get 0
                                  i32.const 404
                                  i32.add
                                  local.tee 6
                                  local.get 6
                                  i32.load
                                  local.get 8
                                  i32.add
                                  local.tee 6
                                  local.get 1
                                  i32.const 8
                                  i32.add
                                  local.get 4
                                  i32.sub
                                  i32.add
                                  local.tee 4
                                  i32.store
                                  local.get 5
                                  local.get 4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  local.get 1
                                  local.get 6
                                  i32.add
                                  i32.const 40
                                  i32.store offset=4
                                  local.get 0
                                  i32.const 2097152
                                  i32.store offset=440
                                  br 6 (;@9;)
                                end
                                local.get 0
                                local.get 5
                                local.get 4
                                i32.or
                                i32.store
                                local.get 3
                                local.set 4
                              end
                              local.get 3
                              local.get 1
                              i32.store offset=8
                              local.get 4
                              local.get 1
                              i32.store offset=12
                              local.get 1
                              local.get 3
                              i32.store offset=12
                              local.get 1
                              local.get 4
                              i32.store offset=8
                            end
                            local.get 6
                            i32.const 8
                            i32.add
                            local.set 2
                            br 4 (;@8;)
                          end
                          i32.const 0
                          local.set 4
                        end
                        loop  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  br_table 1 (;@14;) 0 (;@15;) 0 (;@15;)
                                end
                                local.get 1
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 3
                                i32.sub
                                local.tee 4
                                local.get 5
                                local.get 4
                                local.get 5
                                i32.lt_u
                                local.tee 4
                                select
                                local.set 5
                                local.get 1
                                local.get 2
                                local.get 4
                                select
                                local.set 2
                                local.get 1
                                local.tee 6
                                i32.load offset=16
                                local.tee 1
                                br_if 1 (;@13;)
                                i32.const 0
                                local.set 4
                                br 3 (;@11;)
                              end
                              local.get 6
                              i32.const 20
                              i32.add
                              i32.load
                              local.tee 1
                              br_if 1 (;@12;)
                              local.get 0
                              local.get 2
                              call $_ZN8dlmalloc8dlmalloc8Dlmalloc18unlink_large_chunk17h0a23118361f9322fE
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 5
                                  i32.const 16
                                  i32.ge_u
                                  br_if 0 (;@15;)
                                  local.get 2
                                  local.get 5
                                  local.get 3
                                  i32.add
                                  local.tee 1
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 2
                                  local.get 1
                                  i32.add
                                  local.tee 1
                                  local.get 1
                                  i32.load offset=4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  br 1 (;@14;)
                                end
                                local.get 2
                                local.get 3
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 2
                                local.get 3
                                i32.add
                                local.tee 3
                                local.get 5
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                local.get 3
                                local.get 5
                                i32.add
                                local.get 5
                                i32.store
                                block  ;; label = @15
                                  local.get 0
                                  i32.const 400
                                  i32.add
                                  local.tee 6
                                  i32.load
                                  local.tee 1
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 0
                                  local.get 1
                                  i32.const 3
                                  i32.shr_u
                                  local.tee 9
                                  i32.const 3
                                  i32.shl
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  local.set 4
                                  local.get 0
                                  i32.load offset=408
                                  local.set 1
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 0
                                      i32.load
                                      local.tee 8
                                      i32.const 1
                                      local.get 9
                                      i32.const 31
                                      i32.and
                                      i32.shl
                                      local.tee 9
                                      i32.and
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 4
                                      i32.load offset=8
                                      local.set 9
                                      br 1 (;@16;)
                                    end
                                    local.get 0
                                    local.get 8
                                    local.get 9
                                    i32.or
                                    i32.store
                                    local.get 4
                                    local.set 9
                                  end
                                  local.get 4
                                  local.get 1
                                  i32.store offset=8
                                  local.get 9
                                  local.get 1
                                  i32.store offset=12
                                  local.get 1
                                  local.get 4
                                  i32.store offset=12
                                  local.get 1
                                  local.get 9
                                  i32.store offset=8
                                end
                                local.get 0
                                local.get 3
                                i32.store offset=408
                                local.get 6
                                local.get 5
                                i32.store
                              end
                              local.get 2
                              i32.const 8
                              i32.add
                              return
                            end
                            i32.const 1
                            local.set 4
                            br 1 (;@11;)
                          end
                          i32.const 1
                          local.set 4
                          br 0 (;@11;)
                        end
                      end
                      local.get 0
                      local.get 0
                      i32.load offset=444
                      local.tee 1
                      local.get 6
                      local.get 1
                      local.get 6
                      i32.lt_u
                      select
                      i32.store offset=444
                      local.get 6
                      local.get 8
                      i32.add
                      local.set 9
                      local.get 7
                      local.set 5
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 5
                            i32.load
                            local.get 9
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 5
                            i32.load offset=8
                            local.tee 5
                            br_if 0 (;@12;)
                          end
                          local.get 7
                          local.set 1
                          br 1 (;@10;)
                        end
                        local.get 7
                        local.set 1
                        local.get 5
                        i32.load offset=12
                        br_if 0 (;@10;)
                        local.get 5
                        local.get 6
                        i32.store
                        local.get 5
                        local.get 5
                        i32.load offset=4
                        local.get 8
                        i32.add
                        i32.store offset=4
                        local.get 6
                        local.get 3
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 6
                        local.get 3
                        i32.add
                        local.set 1
                        local.get 9
                        local.get 6
                        i32.sub
                        local.get 3
                        i32.sub
                        local.set 3
                        local.get 0
                        i32.const 412
                        i32.add
                        local.tee 4
                        i32.load
                        local.get 9
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 0
                        i32.load offset=408
                        local.get 9
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 9
                        i32.load offset=4
                        local.tee 4
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if 8 (;@2;)
                        local.get 4
                        i32.const -8
                        i32.and
                        local.tee 5
                        i32.const 255
                        i32.gt_u
                        br_if 5 (;@5;)
                        local.get 9
                        i32.load offset=12
                        local.tee 2
                        local.get 9
                        i32.load offset=8
                        local.tee 8
                        i32.eq
                        br_if 6 (;@4;)
                        local.get 8
                        local.get 2
                        i32.store offset=12
                        local.get 2
                        local.get 8
                        i32.store offset=8
                        br 7 (;@3;)
                      end
                      block  ;; label = @10
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 1
                            i32.load
                            local.tee 5
                            local.get 4
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 1
                            i32.load offset=4
                            i32.add
                            local.tee 5
                            local.get 4
                            i32.gt_u
                            br_if 2 (;@10;)
                          end
                          local.get 1
                          i32.load offset=8
                          local.set 1
                          br 0 (;@11;)
                        end
                      end
                      local.get 0
                      i32.const 404
                      i32.add
                      local.get 8
                      i32.const -40
                      i32.add
                      local.tee 1
                      i32.store
                      local.get 0
                      i32.const 412
                      i32.add
                      local.get 6
                      i32.store
                      local.get 6
                      local.get 1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 6
                      local.get 1
                      i32.add
                      i32.const 40
                      i32.store offset=4
                      local.get 0
                      i32.const 2097152
                      i32.store offset=440
                      local.get 4
                      local.get 5
                      i32.const -32
                      i32.add
                      i32.const -8
                      i32.and
                      i32.const -8
                      i32.add
                      local.tee 1
                      local.get 1
                      local.get 4
                      i32.const 16
                      i32.add
                      i32.lt_u
                      select
                      local.tee 9
                      i32.const 27
                      i32.store offset=4
                      local.get 7
                      i64.load align=4
                      local.set 10
                      local.get 9
                      i32.const 16
                      i32.add
                      local.get 7
                      i32.const 8
                      i32.add
                      i64.load align=4
                      i64.store align=4
                      local.get 9
                      local.get 10
                      i64.store offset=8 align=4
                      local.get 0
                      i32.const 436
                      i32.add
                      i32.const 0
                      i32.store
                      local.get 0
                      i32.const 428
                      i32.add
                      local.get 8
                      i32.store
                      local.get 0
                      i32.const 424
                      i32.add
                      local.get 6
                      i32.store
                      local.get 0
                      i32.const 432
                      i32.add
                      local.get 9
                      i32.const 8
                      i32.add
                      i32.store
                      local.get 9
                      i32.const 28
                      i32.add
                      local.set 1
                      loop  ;; label = @10
                        local.get 1
                        i32.const 7
                        i32.store
                        local.get 5
                        local.get 1
                        i32.const 4
                        i32.add
                        local.tee 1
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                      local.get 9
                      local.get 4
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 9
                      local.get 9
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 4
                      local.get 9
                      local.get 4
                      i32.sub
                      local.tee 1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 9
                      local.get 1
                      i32.store
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 1
                            i32.const 255
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 1
                            i32.const 3
                            i32.shr_u
                            local.tee 5
                            i32.const 3
                            i32.shl
                            i32.add
                            i32.const 8
                            i32.add
                            local.set 1
                            local.get 0
                            i32.load
                            local.tee 6
                            i32.const 1
                            local.get 5
                            i32.const 31
                            i32.and
                            i32.shl
                            local.tee 5
                            i32.and
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 1
                            i32.load offset=8
                            local.set 5
                            br 2 (;@10;)
                          end
                          local.get 0
                          local.get 4
                          local.get 1
                          call $_ZN8dlmalloc8dlmalloc8Dlmalloc18insert_large_chunk17h18115a8ed4a60d31E
                          br 2 (;@9;)
                        end
                        local.get 0
                        local.get 6
                        local.get 5
                        i32.or
                        i32.store
                        local.get 1
                        local.set 5
                      end
                      local.get 1
                      local.get 4
                      i32.store offset=8
                      local.get 5
                      local.get 4
                      i32.store offset=12
                      local.get 4
                      local.get 1
                      i32.store offset=12
                      local.get 4
                      local.get 5
                      i32.store offset=8
                    end
                    local.get 0
                    i32.const 404
                    i32.add
                    local.tee 1
                    i32.load
                    local.tee 4
                    local.get 3
                    i32.le_u
                    br_if 0 (;@8;)
                    local.get 1
                    local.get 4
                    local.get 3
                    i32.sub
                    local.tee 4
                    i32.store
                    local.get 0
                    i32.const 412
                    i32.add
                    local.tee 1
                    local.get 1
                    i32.load
                    local.tee 1
                    local.get 3
                    i32.add
                    local.tee 5
                    i32.store
                    local.get 5
                    local.get 4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 3
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 1
                    i32.const 8
                    i32.add
                    return
                  end
                  local.get 2
                  return
                end
                local.get 4
                local.get 1
                i32.store
                local.get 0
                i32.const 404
                i32.add
                local.tee 4
                local.get 4
                i32.load
                local.get 3
                i32.add
                local.tee 3
                i32.store
                local.get 1
                local.get 3
                i32.const 1
                i32.or
                i32.store offset=4
                br 5 (;@1;)
              end
              local.get 0
              i32.const 408
              i32.add
              local.get 1
              i32.store
              local.get 0
              i32.const 400
              i32.add
              local.tee 4
              local.get 4
              i32.load
              local.get 3
              i32.add
              local.tee 3
              i32.store
              local.get 1
              local.get 3
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 3
              i32.add
              local.get 3
              i32.store
              br 4 (;@1;)
            end
            local.get 0
            local.get 9
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc18unlink_large_chunk17h0a23118361f9322fE
            br 1 (;@3;)
          end
          local.get 0
          local.get 0
          i32.load
          i32.const -2
          local.get 4
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store
        end
        local.get 5
        local.get 3
        i32.add
        local.set 3
        local.get 9
        local.get 5
        i32.add
        local.set 9
      end
      local.get 9
      local.get 9
      i32.load offset=4
      i32.const -2
      i32.and
      i32.store offset=4
      local.get 1
      local.get 3
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 1
      local.get 3
      i32.add
      local.get 3
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            local.get 3
            i32.const 3
            i32.shr_u
            local.tee 4
            i32.const 3
            i32.shl
            i32.add
            i32.const 8
            i32.add
            local.set 3
            local.get 0
            i32.load
            local.tee 5
            i32.const 1
            local.get 4
            i32.const 31
            i32.and
            i32.shl
            local.tee 4
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            i32.load offset=8
            local.set 4
            br 2 (;@2;)
          end
          local.get 0
          local.get 1
          local.get 3
          call $_ZN8dlmalloc8dlmalloc8Dlmalloc18insert_large_chunk17h18115a8ed4a60d31E
          br 2 (;@1;)
        end
        local.get 0
        local.get 5
        local.get 4
        i32.or
        i32.store
        local.get 3
        local.set 4
      end
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 4
      local.get 1
      i32.store offset=12
      local.get 1
      local.get 3
      i32.store offset=12
      local.get 1
      local.get 4
      i32.store offset=8
    end
    local.get 6
    i32.const 8
    i32.add)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc18unlink_large_chunk17h0a23118361f9322fE (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    i32.load offset=24
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=12
            local.tee 3
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=8
            local.tee 4
            local.get 3
            i32.store offset=12
            local.get 3
            local.get 4
            i32.store offset=8
            local.get 2
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 1
            i32.const 20
            i32.const 16
            local.get 1
            i32.const 20
            i32.add
            local.tee 3
            i32.load
            local.tee 5
            select
            i32.add
            i32.load
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.const 16
            i32.add
            local.get 5
            select
            local.set 5
            block  ;; label = @5
              loop  ;; label = @6
                local.get 5
                local.set 6
                block  ;; label = @7
                  local.get 4
                  local.tee 3
                  i32.const 20
                  i32.add
                  local.tee 5
                  i32.load
                  local.tee 4
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                local.get 3
                i32.const 16
                i32.add
                local.set 5
                local.get 3
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
            end
            local.get 6
            i32.const 0
            i32.store
            local.get 2
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 0
          local.set 3
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 1
            i32.load offset=28
            i32.const 2
            i32.shl
            i32.add
            i32.const 272
            i32.add
            local.tee 4
            i32.load
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 16
            i32.const 20
            local.get 2
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 3
            i32.store
            local.get 3
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 4
          local.get 3
          i32.store
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 3
        local.get 2
        i32.store offset=24
        block  ;; label = @3
          local.get 1
          i32.load offset=16
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.store offset=16
          local.get 4
          local.get 3
          i32.store offset=24
        end
        local.get 1
        i32.const 20
        i32.add
        i32.load
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 20
        i32.add
        local.get 4
        i32.store
        local.get 4
        local.get 3
        i32.store offset=24
      end
      return
    end
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const -2
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.rotl
    i32.and
    i32.store offset=4)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc18insert_large_chunk17h18115a8ed4a60d31E (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 8
        i32.shr_u
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const 31
        local.set 4
        local.get 2
        i32.const 16777215
        i32.gt_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 38
        local.get 3
        i32.clz
        local.tee 4
        i32.sub
        i32.const 31
        i32.and
        i32.shr_u
        i32.const 1
        i32.and
        i32.const 31
        local.get 4
        i32.sub
        i32.const 1
        i32.shl
        i32.or
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 4
    end
    local.get 1
    i64.const 0
    i64.store offset=16 align=4
    local.get 1
    local.get 4
    i32.store offset=28
    local.get 0
    local.get 4
    i32.const 2
    i32.shl
    i32.add
    i32.const 272
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 5
              i32.const 1
              local.get 4
              i32.const 31
              i32.and
              i32.shl
              local.tee 6
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load
              local.tee 3
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 2
              i32.ne
              br_if 1 (;@4;)
              local.get 3
              local.set 4
              br 2 (;@3;)
            end
            local.get 0
            i32.const 4
            i32.add
            local.get 5
            local.get 6
            i32.or
            i32.store
            local.get 3
            local.get 1
            i32.store
            local.get 1
            local.get 3
            i32.store offset=24
            br 3 (;@1;)
          end
          local.get 2
          i32.const 0
          i32.const 25
          local.get 4
          i32.const 1
          i32.shr_u
          i32.sub
          i32.const 31
          i32.and
          local.get 4
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 0
          loop  ;; label = @4
            local.get 3
            local.get 0
            i32.const 29
            i32.shr_u
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 5
            i32.load
            local.tee 4
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.const 1
            i32.shl
            local.set 0
            local.get 4
            local.set 3
            local.get 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 2
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 4
        i32.load offset=8
        local.tee 0
        local.get 1
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        local.get 1
        i32.const 0
        i32.store offset=24
        local.get 1
        local.get 4
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        return
      end
      local.get 5
      local.get 1
      i32.store
      local.get 1
      local.get 3
      i32.store offset=24
    end
    local.get 1
    local.get 1
    i32.store offset=12
    local.get 1
    local.get 1
    i32.store offset=8)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc7realloc17hf3625de3a8ba5795E (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.const -65588
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 16
      local.get 2
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 2
      i32.const 11
      i32.lt_u
      select
      local.set 4
      local.get 1
      i32.const -4
      i32.add
      local.tee 5
      i32.load
      local.tee 6
      i32.const -8
      i32.and
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 6
                          i32.const 3
                          i32.and
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 1
                          i32.const -8
                          i32.add
                          local.tee 8
                          local.get 7
                          i32.add
                          local.set 9
                          local.get 7
                          local.get 4
                          i32.ge_u
                          br_if 1 (;@10;)
                          local.get 0
                          i32.load offset=412
                          local.get 9
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 0
                          i32.load offset=408
                          local.get 9
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 9
                          i32.load offset=4
                          local.tee 6
                          i32.const 2
                          i32.and
                          br_if 4 (;@7;)
                          local.get 6
                          i32.const -8
                          i32.and
                          local.tee 10
                          local.get 7
                          i32.add
                          local.tee 7
                          local.get 4
                          i32.lt_u
                          br_if 4 (;@7;)
                          local.get 7
                          local.get 4
                          i32.sub
                          local.set 2
                          local.get 10
                          i32.const 255
                          i32.gt_u
                          br_if 6 (;@5;)
                          local.get 9
                          i32.load offset=12
                          local.tee 3
                          local.get 9
                          i32.load offset=8
                          local.tee 9
                          i32.eq
                          br_if 7 (;@4;)
                          local.get 9
                          local.get 3
                          i32.store offset=12
                          local.get 3
                          local.get 9
                          i32.store offset=8
                          br 8 (;@3;)
                        end
                        local.get 4
                        i32.const 256
                        i32.lt_u
                        br_if 3 (;@7;)
                        local.get 7
                        local.get 4
                        i32.const 4
                        i32.or
                        i32.lt_u
                        br_if 3 (;@7;)
                        local.get 7
                        local.get 4
                        i32.sub
                        i32.const 131073
                        i32.lt_u
                        br_if 8 (;@2;)
                        br 3 (;@7;)
                      end
                      local.get 7
                      local.get 4
                      i32.sub
                      local.tee 2
                      i32.const 16
                      i32.lt_u
                      br_if 7 (;@2;)
                      local.get 5
                      local.get 4
                      local.get 6
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 2
                      i32.or
                      i32.store
                      local.get 8
                      local.get 4
                      i32.add
                      local.tee 3
                      local.get 2
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 9
                      local.get 9
                      i32.load offset=4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 3
                      local.get 2
                      call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h20fdc00f18ed4ec3E
                      br 7 (;@2;)
                    end
                    local.get 0
                    i32.load offset=404
                    local.get 7
                    i32.add
                    local.tee 7
                    local.get 4
                    i32.le_u
                    br_if 1 (;@7;)
                    local.get 5
                    local.get 4
                    local.get 6
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 2
                    i32.or
                    i32.store
                    local.get 8
                    local.get 4
                    i32.add
                    local.tee 2
                    local.get 7
                    local.get 4
                    i32.sub
                    local.tee 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    i32.const 404
                    i32.add
                    local.get 3
                    i32.store
                    local.get 0
                    i32.const 412
                    i32.add
                    local.get 2
                    i32.store
                    br 6 (;@2;)
                  end
                  local.get 0
                  i32.load offset=400
                  local.get 7
                  i32.add
                  local.tee 7
                  local.get 4
                  i32.ge_u
                  br_if 1 (;@6;)
                end
                local.get 0
                local.get 2
                call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h884b4d5512fdfd0dE
                local.tee 4
                i32.eqz
                br_if 5 (;@1;)
                local.get 4
                local.get 1
                local.get 2
                local.get 5
                i32.load
                local.tee 3
                i32.const -8
                i32.and
                i32.const 4
                i32.const 8
                local.get 3
                i32.const 3
                i32.and
                select
                i32.sub
                local.tee 3
                local.get 3
                local.get 2
                i32.gt_u
                select
                call $memcpy
                local.set 2
                local.get 0
                local.get 1
                call $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17hfda8cc57773548eaE
                local.get 2
                return
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 7
                  local.get 4
                  i32.sub
                  local.tee 2
                  i32.const 16
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 5
                  local.get 6
                  i32.const 1
                  i32.and
                  local.get 7
                  i32.or
                  i32.const 2
                  i32.or
                  i32.store
                  local.get 8
                  local.get 7
                  i32.add
                  local.tee 2
                  local.get 2
                  i32.load offset=4
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  local.set 2
                  i32.const 0
                  local.set 3
                  br 1 (;@6;)
                end
                local.get 5
                local.get 4
                local.get 6
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 8
                local.get 4
                i32.add
                local.tee 3
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 8
                local.get 7
                i32.add
                local.tee 4
                local.get 2
                i32.store
                local.get 4
                local.get 4
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
              end
              local.get 0
              i32.const 408
              i32.add
              local.get 3
              i32.store
              local.get 0
              i32.const 400
              i32.add
              local.get 2
              i32.store
              br 3 (;@2;)
            end
            local.get 0
            local.get 9
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc18unlink_large_chunk17h0a23118361f9322fE
            br 1 (;@3;)
          end
          local.get 0
          local.get 0
          i32.load
          i32.const -2
          local.get 6
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store
        end
        block  ;; label = @3
          local.get 2
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 7
          local.get 5
          i32.load
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 8
          local.get 7
          i32.add
          local.tee 2
          local.get 2
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 5
        local.get 4
        local.get 5
        i32.load
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 8
        local.get 4
        i32.add
        local.tee 3
        local.get 2
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 8
        local.get 7
        i32.add
        local.tee 4
        local.get 4
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 3
        local.get 2
        call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h20fdc00f18ed4ec3E
      end
      local.get 1
      local.set 3
    end
    local.get 3)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h20fdc00f18ed4ec3E (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 1
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.load offset=4
                    local.tee 4
                    i32.const 1
                    i32.and
                    br_if 0 (;@8;)
                    local.get 4
                    i32.const 3
                    i32.and
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 1
                    i32.load
                    local.tee 4
                    local.get 2
                    i32.add
                    local.set 2
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load offset=408
                          local.get 1
                          local.get 4
                          i32.sub
                          local.tee 1
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 255
                          i32.gt_u
                          br_if 1 (;@10;)
                          local.get 1
                          i32.load offset=12
                          local.tee 5
                          local.get 1
                          i32.load offset=8
                          local.tee 6
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 6
                          local.get 5
                          i32.store offset=12
                          local.get 5
                          local.get 6
                          i32.store offset=8
                          br 3 (;@8;)
                        end
                        local.get 3
                        i32.load offset=4
                        i32.const 3
                        i32.and
                        i32.const 3
                        i32.ne
                        br_if 2 (;@8;)
                        local.get 0
                        local.get 2
                        i32.store offset=400
                        local.get 3
                        i32.const 4
                        i32.add
                        local.tee 0
                        local.get 0
                        i32.load
                        i32.const -2
                        i32.and
                        i32.store
                        local.get 1
                        local.get 2
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 3
                        local.get 2
                        i32.store
                        return
                      end
                      local.get 0
                      local.get 1
                      call $_ZN8dlmalloc8dlmalloc8Dlmalloc18unlink_large_chunk17h0a23118361f9322fE
                      br 1 (;@8;)
                    end
                    local.get 0
                    local.get 0
                    i32.load
                    i32.const -2
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      i32.load offset=4
                      local.tee 4
                      i32.const 2
                      i32.and
                      br_if 0 (;@9;)
                      local.get 0
                      i32.load offset=412
                      local.get 3
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 0
                      i32.load offset=408
                      local.get 3
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 4
                      i32.const -8
                      i32.and
                      local.tee 5
                      local.get 2
                      i32.add
                      local.set 2
                      local.get 5
                      i32.const 255
                      i32.gt_u
                      br_if 4 (;@5;)
                      local.get 3
                      i32.load offset=12
                      local.tee 5
                      local.get 3
                      i32.load offset=8
                      local.tee 3
                      i32.eq
                      br_if 6 (;@3;)
                      local.get 3
                      local.get 5
                      i32.store offset=12
                      local.get 5
                      local.get 3
                      i32.store offset=8
                      br 7 (;@2;)
                    end
                    local.get 3
                    i32.const 4
                    i32.add
                    local.get 4
                    i32.const -2
                    i32.and
                    i32.store
                    local.get 1
                    local.get 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 2
                    i32.add
                    local.get 2
                    i32.store
                    br 7 (;@1;)
                  end
                  local.get 0
                  i32.const 412
                  i32.add
                  local.get 1
                  i32.store
                  local.get 0
                  local.get 0
                  i32.load offset=404
                  local.get 2
                  i32.add
                  local.tee 2
                  i32.store offset=404
                  local.get 1
                  local.get 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 0
                  i32.load offset=408
                  i32.eq
                  br_if 3 (;@4;)
                end
                return
              end
              local.get 0
              i32.const 408
              i32.add
              local.get 1
              i32.store
              local.get 0
              local.get 0
              i32.load offset=400
              local.get 2
              i32.add
              local.tee 2
              i32.store offset=400
              local.get 1
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 2
              i32.add
              local.get 2
              i32.store
              return
            end
            local.get 0
            local.get 3
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc18unlink_large_chunk17h0a23118361f9322fE
            br 2 (;@2;)
          end
          local.get 0
          i32.const 0
          i32.store offset=400
          local.get 0
          i32.const 408
          i32.add
          i32.const 0
          i32.store
          return
        end
        local.get 0
        local.get 0
        i32.load
        i32.const -2
        local.get 4
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
      end
      local.get 1
      local.get 2
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 1
      local.get 2
      i32.add
      local.get 2
      i32.store
      local.get 1
      local.get 0
      i32.const 408
      i32.add
      i32.load
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.store offset=400
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 2
          i32.const 3
          i32.shr_u
          local.tee 3
          i32.const 3
          i32.shl
          i32.add
          i32.const 8
          i32.add
          local.set 2
          local.get 0
          i32.load
          local.tee 4
          i32.const 1
          local.get 3
          i32.const 31
          i32.and
          i32.shl
          local.tee 3
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.load offset=8
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        local.get 1
        local.get 2
        call $_ZN8dlmalloc8dlmalloc8Dlmalloc18insert_large_chunk17h18115a8ed4a60d31E
        return
      end
      local.get 0
      local.get 4
      local.get 3
      i32.or
      i32.store
      local.get 2
      local.set 0
    end
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 1
    local.get 2
    i32.store offset=12
    local.get 1
    local.get 0
    i32.store offset=8)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc4free17hfda8cc57773548eaE (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    i32.const -8
    i32.add
    local.tee 2
    local.get 1
    i32.const -4
    i32.add
    i32.load
    local.tee 3
    i32.const -8
    i32.and
    local.tee 1
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=408
              local.get 2
              local.get 3
              i32.sub
              local.tee 2
              i32.eq
              br_if 0 (;@5;)
              local.get 3
              i32.const 255
              i32.gt_u
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=12
              local.tee 5
              local.get 2
              i32.load offset=8
              local.tee 6
              i32.eq
              br_if 2 (;@3;)
              local.get 6
              local.get 5
              i32.store offset=12
              local.get 5
              local.get 6
              i32.store offset=8
              br 3 (;@2;)
            end
            local.get 4
            i32.load offset=4
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if 2 (;@2;)
            local.get 0
            local.get 1
            i32.store offset=400
            local.get 4
            i32.const 4
            i32.add
            local.tee 0
            local.get 0
            i32.load
            i32.const -2
            i32.and
            i32.store
            local.get 2
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 1
            i32.add
            local.get 1
            i32.store
            return
          end
          local.get 0
          local.get 2
          call $_ZN8dlmalloc8dlmalloc8Dlmalloc18unlink_large_chunk17h0a23118361f9322fE
          br 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load
        i32.const -2
        local.get 3
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 4
                        i32.load offset=4
                        local.tee 3
                        i32.const 2
                        i32.and
                        br_if 0 (;@10;)
                        local.get 0
                        i32.load offset=412
                        local.get 4
                        i32.eq
                        br_if 1 (;@9;)
                        local.get 0
                        i32.load offset=408
                        local.get 4
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 3
                        i32.const -8
                        i32.and
                        local.tee 5
                        local.get 1
                        i32.add
                        local.set 1
                        local.get 5
                        i32.const 255
                        i32.gt_u
                        br_if 3 (;@7;)
                        local.get 4
                        i32.load offset=12
                        local.tee 5
                        local.get 4
                        i32.load offset=8
                        local.tee 4
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 4
                        local.get 5
                        i32.store offset=12
                        local.get 5
                        local.get 4
                        i32.store offset=8
                        br 5 (;@5;)
                      end
                      local.get 4
                      i32.const 4
                      i32.add
                      local.get 3
                      i32.const -2
                      i32.and
                      i32.store
                      local.get 2
                      local.get 1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 2
                      local.get 1
                      i32.add
                      local.get 1
                      i32.store
                      br 7 (;@2;)
                    end
                    local.get 0
                    i32.const 412
                    i32.add
                    local.get 2
                    i32.store
                    local.get 0
                    local.get 0
                    i32.load offset=404
                    local.get 1
                    i32.add
                    local.tee 1
                    i32.store offset=404
                    local.get 2
                    local.get 1
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block  ;; label = @9
                      local.get 2
                      local.get 0
                      i32.load offset=408
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 0
                      i32.store offset=400
                      local.get 0
                      i32.const 408
                      i32.add
                      i32.const 0
                      i32.store
                    end
                    local.get 0
                    i32.load offset=440
                    local.tee 3
                    local.get 1
                    i32.ge_u
                    br_if 7 (;@1;)
                    local.get 0
                    i32.const 412
                    i32.add
                    i32.load
                    local.tee 1
                    i32.eqz
                    br_if 7 (;@1;)
                    block  ;; label = @9
                      local.get 0
                      i32.const 404
                      i32.add
                      i32.load
                      local.tee 5
                      i32.const 41
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 424
                      i32.add
                      local.set 2
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 2
                          i32.load
                          local.tee 4
                          local.get 1
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 4
                          local.get 2
                          i32.load offset=4
                          i32.add
                          local.get 1
                          i32.gt_u
                          br_if 2 (;@9;)
                        end
                        local.get 2
                        i32.load offset=8
                        local.tee 2
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 0
                    i32.const 432
                    i32.add
                    i32.load
                    local.tee 1
                    i32.eqz
                    br_if 4 (;@4;)
                    i32.const 0
                    local.set 2
                    loop  ;; label = @9
                      local.get 2
                      i32.const 1
                      i32.add
                      local.set 2
                      local.get 1
                      i32.load offset=8
                      local.tee 1
                      br_if 0 (;@9;)
                    end
                    local.get 2
                    i32.const 4095
                    local.get 2
                    i32.const 4095
                    i32.gt_u
                    select
                    local.set 2
                    br 5 (;@3;)
                  end
                  local.get 0
                  i32.const 408
                  i32.add
                  local.get 2
                  i32.store
                  local.get 0
                  local.get 0
                  i32.load offset=400
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=400
                  local.get 2
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 2
                  local.get 1
                  i32.add
                  local.get 1
                  i32.store
                  return
                end
                local.get 0
                local.get 4
                call $_ZN8dlmalloc8dlmalloc8Dlmalloc18unlink_large_chunk17h0a23118361f9322fE
                br 1 (;@5;)
              end
              local.get 0
              local.get 0
              i32.load
              i32.const -2
              local.get 3
              i32.const 3
              i32.shr_u
              i32.rotl
              i32.and
              i32.store
            end
            local.get 2
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 1
            i32.add
            local.get 1
            i32.store
            local.get 2
            local.get 0
            i32.const 408
            i32.add
            i32.load
            i32.ne
            br_if 2 (;@2;)
            local.get 0
            local.get 1
            i32.store offset=400
            return
          end
          i32.const 4095
          local.set 2
        end
        local.get 0
        local.get 2
        i32.store offset=448
        local.get 5
        local.get 3
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        i32.const 440
        i32.add
        i32.const -1
        i32.store
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 255
                i32.gt_u
                br_if 0 (;@6;)
                local.get 0
                local.get 1
                i32.const 3
                i32.shr_u
                local.tee 4
                i32.const 3
                i32.shl
                i32.add
                i32.const 8
                i32.add
                local.set 1
                local.get 0
                i32.load
                local.tee 3
                i32.const 1
                local.get 4
                i32.const 31
                i32.and
                i32.shl
                local.tee 4
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                local.get 1
                i32.load offset=8
                local.set 0
                br 2 (;@4;)
              end
              local.get 0
              local.get 2
              local.get 1
              call $_ZN8dlmalloc8dlmalloc8Dlmalloc18insert_large_chunk17h18115a8ed4a60d31E
              local.get 0
              local.get 0
              i32.load offset=448
              i32.const -1
              i32.add
              local.tee 2
              i32.store offset=448
              local.get 2
              br_if 4 (;@1;)
              local.get 0
              i32.const 432
              i32.add
              i32.load
              local.tee 1
              i32.eqz
              br_if 2 (;@3;)
              i32.const 0
              local.set 2
              loop  ;; label = @6
                local.get 2
                i32.const 1
                i32.add
                local.set 2
                local.get 1
                i32.load offset=8
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 2
              i32.const 4095
              local.get 2
              i32.const 4095
              i32.gt_u
              select
              local.set 2
              br 3 (;@2;)
            end
            local.get 0
            local.get 3
            local.get 4
            i32.or
            i32.store
            local.get 1
            local.set 0
          end
          local.get 1
          local.get 2
          i32.store offset=8
          local.get 0
          local.get 2
          i32.store offset=12
          local.get 2
          local.get 1
          i32.store offset=12
          local.get 2
          local.get 0
          i32.store offset=8
          return
        end
        i32.const 4095
        local.set 2
      end
      local.get 0
      i32.const 448
      i32.add
      local.get 2
      i32.store
    end)
  (func $_ZN8dlmalloc8dlmalloc8Dlmalloc8memalign17h474fa91a40312fd9E (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      i32.const -65587
      local.get 1
      i32.const 16
      local.get 1
      i32.const 16
      i32.gt_u
      select
      local.tee 1
      i32.sub
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 16
      local.get 2
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 2
      i32.const 11
      i32.lt_u
      select
      local.tee 4
      i32.add
      i32.const 12
      i32.add
      call $_ZN8dlmalloc8dlmalloc8Dlmalloc6malloc17h884b4d5512fdfd0dE
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const -8
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 5
            local.get 2
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const -4
            i32.add
            local.tee 6
            i32.load
            local.tee 7
            i32.const -8
            i32.and
            local.get 5
            local.get 2
            i32.add
            i32.const 0
            local.get 1
            i32.sub
            i32.and
            i32.const -8
            i32.add
            local.tee 2
            local.get 2
            local.get 1
            i32.add
            local.get 2
            local.get 3
            i32.sub
            i32.const 16
            i32.gt_u
            select
            local.tee 1
            local.get 3
            i32.sub
            local.tee 2
            i32.sub
            local.set 5
            local.get 7
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            local.get 5
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store offset=4
            local.get 1
            local.get 5
            i32.add
            local.tee 5
            local.get 5
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 6
            local.get 2
            local.get 6
            i32.load
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            local.get 2
            call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h20fdc00f18ed4ec3E
            br 2 (;@2;)
          end
          local.get 3
          local.set 1
          br 1 (;@2;)
        end
        local.get 3
        i32.load
        local.set 3
        local.get 1
        local.get 5
        i32.store offset=4
        local.get 1
        local.get 3
        local.get 2
        i32.add
        i32.store
      end
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const -8
        i32.and
        local.tee 3
        local.get 4
        i32.const 16
        i32.add
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 4
        i32.add
        local.get 4
        local.get 2
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 1
        local.get 4
        i32.add
        local.tee 2
        local.get 3
        local.get 4
        i32.sub
        local.tee 4
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 1
        local.get 3
        i32.add
        local.tee 3
        local.get 3
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        local.get 4
        call $_ZN8dlmalloc8dlmalloc8Dlmalloc13dispose_chunk17h20fdc00f18ed4ec3E
      end
      local.get 1
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 3)
  (func $_ZN5alloc5alloc18handle_alloc_error17h487dcee887caabd9E (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $rust_oom
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17ha96a6e7a6e4b649bE (type 3)
    i32.const 1052388
    call $_ZN4core9panicking5panic17h8a3e045054bc310aE
    unreachable)
  (func $_ZN4core3ptr18real_drop_in_place17h02a7b26e9a0e12f0E (type 8) (param i32))
  (func $_ZN4core3ptr18real_drop_in_place17h1609f1d9ad4d5cddE (type 8) (param i32))
  (func $_ZN4core3ptr18real_drop_in_place17h4da4af2e6d46b4d6E (type 8) (param i32))
  (func $_ZN4core5slice20slice_index_len_fail17hc9e2213a794056afE (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 44
    i32.add
    i32.const 15
    i32.store
    local.get 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 15
    i32.store offset=36
    local.get 2
    i64.const 2
    i64.store offset=12 align=4
    local.get 2
    i32.const 1052484
    i32.store offset=8
    local.get 2
    local.get 2
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.store offset=32
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 2
    i32.const 8
    i32.add
    i32.const 1052500
    call $_ZN4core9panicking9panic_fmt17h48f78e79a0848c36E
    unreachable)
  (func $_ZN4core9panicking18panic_bounds_check17hfdfaf85d42f243ecE (type 5) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 15
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 15
    i32.store offset=36
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1052444
    i32.store offset=8
    local.get 3
    local.get 3
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    call $_ZN4core9panicking9panic_fmt17h48f78e79a0848c36E
    unreachable)
  (func $_ZN4core9panicking5panic17h8a3e045054bc310aE (type 8) (param i32)
    (local i32 i64 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i64.load offset=8 align=4
    local.set 2
    local.get 0
    i64.load offset=16 align=4
    local.set 3
    local.get 0
    i64.load align=4
    local.set 4
    local.get 1
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 1
    local.get 4
    i64.store offset=24
    local.get 1
    i32.const 1048748
    i32.store offset=16
    local.get 1
    i64.const 1
    i64.store offset=4 align=4
    local.get 1
    local.get 1
    i32.const 24
    i32.add
    i32.store
    local.get 1
    local.get 3
    i64.store offset=40
    local.get 1
    local.get 2
    i64.store offset=32
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    call $_ZN4core9panicking9panic_fmt17h48f78e79a0848c36E
    unreachable)
  (func $_ZN4core5slice22slice_index_order_fail17h44889e79457bda08E (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 44
    i32.add
    i32.const 15
    i32.store
    local.get 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 15
    i32.store offset=36
    local.get 2
    i64.const 2
    i64.store offset=12 align=4
    local.get 2
    i32.const 1052516
    i32.store offset=8
    local.get 2
    local.get 2
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.store offset=32
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 2
    i32.const 8
    i32.add
    i32.const 1052532
    call $_ZN4core9panicking9panic_fmt17h48f78e79a0848c36E
    unreachable)
  (func $_ZN4core9panicking9panic_fmt17h48f78e79a0848c36E (type 0) (param i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i64.load align=4
    local.set 3
    local.get 2
    i32.const 20
    i32.add
    local.get 1
    i64.load offset=8 align=4
    i64.store align=4
    local.get 2
    local.get 3
    i64.store offset=12 align=4
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 1052428
    i32.store offset=4
    local.get 2
    i32.const 1048748
    i32.store
    local.get 2
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core3fmt9Formatter3pad17h7f16e71e3af941cdE (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=16
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=8
                      local.tee 4
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 3
                      br_if 1 (;@8;)
                      br 6 (;@3;)
                    end
                    local.get 3
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  local.get 2
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 1
                  local.get 2
                  i32.add
                  local.set 5
                  local.get 0
                  i32.const 20
                  i32.add
                  i32.load
                  i32.const -1
                  i32.xor
                  local.set 6
                  i32.const 0
                  local.set 7
                  local.get 1
                  local.set 3
                  local.get 1
                  local.set 8
                  loop  ;; label = @8
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 9
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 3
                              i32.load8_s
                              local.tee 10
                              i32.const 0
                              i32.lt_s
                              br_if 0 (;@13;)
                              local.get 10
                              i32.const 255
                              i32.and
                              local.set 10
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 9
                                local.get 5
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 9
                                i32.load8_u
                                i32.const 63
                                i32.and
                                local.set 11
                                local.get 3
                                i32.const 2
                                i32.add
                                local.tee 3
                                local.set 9
                                br 1 (;@13;)
                              end
                              i32.const 0
                              local.set 11
                              local.get 5
                              local.set 3
                            end
                            local.get 10
                            i32.const 31
                            i32.and
                            local.set 12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 10
                                  i32.const 255
                                  i32.and
                                  local.tee 10
                                  i32.const 224
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  local.get 3
                                  local.get 5
                                  i32.eq
                                  br_if 1 (;@14;)
                                  local.get 3
                                  i32.load8_u
                                  i32.const 63
                                  i32.and
                                  local.set 13
                                  local.get 3
                                  i32.const 1
                                  i32.add
                                  local.tee 9
                                  local.set 14
                                  br 2 (;@13;)
                                end
                                local.get 11
                                local.get 12
                                i32.const 6
                                i32.shl
                                i32.or
                                local.set 10
                                br 2 (;@12;)
                              end
                              i32.const 0
                              local.set 13
                              local.get 5
                              local.set 14
                            end
                            local.get 13
                            local.get 11
                            i32.const 6
                            i32.shl
                            i32.or
                            local.set 11
                            block  ;; label = @13
                              local.get 10
                              i32.const 240
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 14
                              local.get 5
                              i32.eq
                              br_if 2 (;@11;)
                              local.get 14
                              i32.const 1
                              i32.add
                              local.set 3
                              local.get 14
                              i32.load8_u
                              i32.const 63
                              i32.and
                              local.set 10
                              br 3 (;@10;)
                            end
                            local.get 11
                            local.get 12
                            i32.const 12
                            i32.shl
                            i32.or
                            local.set 10
                          end
                          local.get 9
                          local.set 3
                          local.get 6
                          i32.const 1
                          i32.add
                          local.tee 6
                          br_if 2 (;@9;)
                          br 6 (;@5;)
                        end
                        i32.const 0
                        local.set 10
                        local.get 9
                        local.set 3
                      end
                      local.get 11
                      i32.const 6
                      i32.shl
                      local.get 12
                      i32.const 18
                      i32.shl
                      i32.const 1835008
                      i32.and
                      i32.or
                      local.get 10
                      i32.or
                      local.tee 10
                      i32.const 1114112
                      i32.eq
                      br_if 5 (;@4;)
                      local.get 6
                      i32.const 1
                      i32.add
                      local.tee 6
                      i32.eqz
                      br_if 4 (;@5;)
                    end
                    local.get 7
                    local.get 8
                    i32.sub
                    local.get 3
                    i32.add
                    local.set 7
                    local.get 3
                    local.set 8
                    local.get 5
                    local.get 3
                    i32.ne
                    br_if 0 (;@8;)
                    br 4 (;@4;)
                  end
                end
                local.get 0
                i32.load offset=24
                local.get 1
                local.get 2
                local.get 0
                i32.const 28
                i32.add
                i32.load
                i32.load offset=12
                call_indirect (type 1)
                local.set 3
                br 5 (;@1;)
              end
              i32.const 0
              local.set 2
              local.get 4
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            local.get 10
            i32.const 1114112
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 7
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                local.get 7
                local.get 2
                i32.ge_u
                br_if 1 (;@5;)
                local.get 1
                local.get 7
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if 1 (;@5;)
              end
              local.get 1
              local.set 3
            end
            local.get 7
            local.get 2
            local.get 3
            select
            local.set 2
            local.get 3
            local.get 1
            local.get 3
            select
            local.set 1
          end
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 9
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.set 10
          local.get 1
          local.set 3
          loop  ;; label = @4
            local.get 9
            local.get 3
            i32.load8_u
            i32.const 192
            i32.and
            i32.const 128
            i32.eq
            i32.add
            local.set 9
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 10
            i32.const -1
            i32.add
            local.tee 10
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                local.get 9
                i32.sub
                local.get 0
                i32.const 12
                i32.add
                i32.load
                local.tee 6
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                local.set 9
                block  ;; label = @7
                  local.get 2
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 9
                  local.get 2
                  local.set 10
                  local.get 1
                  local.set 3
                  loop  ;; label = @8
                    local.get 9
                    local.get 3
                    i32.load8_u
                    i32.const 192
                    i32.and
                    i32.const 128
                    i32.eq
                    i32.add
                    local.set 9
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 3
                    local.get 10
                    i32.const -1
                    i32.add
                    local.tee 10
                    br_if 0 (;@8;)
                  end
                end
                local.get 9
                local.get 2
                i32.sub
                local.get 6
                i32.add
                local.set 9
                i32.const 0
                local.get 0
                i32.load8_u offset=48
                local.tee 3
                local.get 3
                i32.const 3
                i32.eq
                select
                local.tee 3
                i32.const 3
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                local.get 3
                i32.const 2
                i32.eq
                br_if 2 (;@4;)
                i32.const 0
                local.set 8
                br 3 (;@3;)
              end
              local.get 0
              i32.load offset=24
              local.get 1
              local.get 2
              local.get 0
              i32.const 28
              i32.add
              i32.load
              i32.load offset=12
              call_indirect (type 1)
              return
            end
            local.get 9
            local.set 8
            i32.const 0
            local.set 9
            br 1 (;@3;)
          end
          local.get 9
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 8
          local.get 9
          i32.const 1
          i32.shr_u
          local.set 9
        end
        i32.const -1
        local.set 3
        local.get 0
        i32.const 4
        i32.add
        local.set 10
        local.get 0
        i32.const 24
        i32.add
        local.set 6
        local.get 0
        i32.const 28
        i32.add
        local.set 7
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            local.get 9
            i32.ge_u
            br_if 1 (;@3;)
            local.get 6
            i32.load
            local.get 10
            i32.load
            local.get 7
            i32.load
            i32.load offset=16
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 9
        i32.const 1
        local.set 3
        local.get 0
        i32.const 24
        i32.add
        local.tee 10
        i32.load
        local.get 1
        local.get 2
        local.get 0
        i32.const 28
        i32.add
        local.tee 6
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
        local.get 10
        i32.load
        local.set 10
        i32.const -1
        local.set 3
        local.get 6
        i32.load
        i32.const 16
        i32.add
        local.set 6
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            local.get 8
            i32.ge_u
            br_if 1 (;@3;)
            local.get 10
            local.get 9
            local.get 6
            i32.load
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        i32.const 0
        return
      end
      local.get 0
      i32.load offset=24
      local.get 1
      local.get 2
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 1)
      return
    end
    local.get 3)
  (func $_ZN4core3str16slice_error_fail17hd5728b2706c95849E (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 4
    local.get 2
    i32.store offset=8
    i32.const 1
    local.set 5
    local.get 1
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.const 257
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 1
      i32.sub
      local.set 7
      i32.const 256
      local.set 8
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 8
            local.get 1
            i32.ge_u
            br_if 0 (;@4;)
            local.get 0
            local.get 8
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            br_if 2 (;@2;)
          end
          local.get 8
          i32.const -1
          i32.add
          local.set 6
          i32.const 0
          local.set 5
          local.get 8
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          local.get 7
          local.get 8
          i32.add
          local.set 9
          local.get 6
          local.set 8
          local.get 9
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      local.set 5
      local.get 8
      local.set 6
    end
    local.get 4
    local.get 6
    i32.store offset=20
    local.get 4
    local.get 0
    i32.store offset=16
    local.get 4
    i32.const 0
    i32.const 5
    local.get 5
    select
    i32.store offset=28
    local.get 4
    i32.const 1048748
    i32.const 1048988
    local.get 5
    select
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          local.get 1
          i32.gt_u
          local.tee 8
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.gt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              local.get 2
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              local.get 2
              i32.le_u
              br_if 1 (;@4;)
              local.get 0
              local.get 2
              i32.add
              i32.load8_s
              i32.const -64
              i32.lt_s
              br_if 1 (;@4;)
            end
            local.get 3
            local.set 2
          end
          local.get 4
          local.get 2
          i32.store offset=32
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.get 1
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              i32.const 1
              i32.add
              local.set 9
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 2
                  i32.add
                  i32.load8_s
                  i32.const -64
                  i32.ge_s
                  br_if 2 (;@5;)
                end
                local.get 2
                i32.const -1
                i32.add
                local.set 8
                local.get 2
                i32.const 1
                i32.eq
                br_if 2 (;@4;)
                local.get 9
                local.get 2
                i32.eq
                local.set 6
                local.get 8
                local.set 2
                local.get 6
                i32.eqz
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            local.get 2
            local.set 8
          end
          local.get 8
          local.get 1
          i32.eq
          br_if 2 (;@1;)
          i32.const 1
          local.set 6
          i32.const 0
          local.set 5
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              local.get 8
              i32.add
              local.tee 9
              i32.load8_s
              local.tee 2
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              local.get 4
              local.get 2
              i32.const 255
              i32.and
              i32.store offset=36
              local.get 4
              i32.const 40
              i32.add
              local.set 2
              br 1 (;@4;)
            end
            local.get 0
            local.get 1
            i32.add
            local.tee 6
            local.set 1
            block  ;; label = @5
              local.get 9
              i32.const 1
              i32.add
              local.get 6
              i32.eq
              br_if 0 (;@5;)
              local.get 9
              i32.const 2
              i32.add
              local.set 1
              local.get 9
              i32.const 1
              i32.add
              i32.load8_u
              i32.const 63
              i32.and
              local.set 5
            end
            local.get 2
            i32.const 31
            i32.and
            local.set 9
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 255
                  i32.and
                  i32.const 224
                  i32.lt_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 0
                  local.get 6
                  local.set 7
                  block  ;; label = @8
                    local.get 1
                    local.get 6
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 1
                    i32.add
                    local.set 7
                    local.get 1
                    i32.load8_u
                    i32.const 63
                    i32.and
                    local.set 0
                  end
                  local.get 0
                  local.get 5
                  i32.const 6
                  i32.shl
                  i32.or
                  local.set 1
                  local.get 2
                  i32.const 255
                  i32.and
                  i32.const 240
                  i32.lt_u
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 2
                  block  ;; label = @8
                    local.get 7
                    local.get 6
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 7
                    i32.load8_u
                    i32.const 63
                    i32.and
                    local.set 2
                  end
                  local.get 1
                  i32.const 6
                  i32.shl
                  local.get 9
                  i32.const 18
                  i32.shl
                  i32.const 1835008
                  i32.and
                  i32.or
                  local.get 2
                  i32.or
                  local.tee 1
                  i32.const 1114112
                  i32.eq
                  br_if 6 (;@1;)
                  br 2 (;@5;)
                end
                local.get 5
                local.get 9
                i32.const 6
                i32.shl
                i32.or
                local.set 1
                br 1 (;@5;)
              end
              local.get 1
              local.get 9
              i32.const 12
              i32.shl
              i32.or
              local.set 1
            end
            local.get 4
            local.get 1
            i32.store offset=36
            i32.const 1
            local.set 6
            local.get 4
            i32.const 40
            i32.add
            local.set 2
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 2
            local.set 6
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 3
            i32.const 4
            local.get 1
            i32.const 65536
            i32.lt_u
            select
            local.set 6
          end
          local.get 4
          local.get 8
          i32.store offset=40
          local.get 4
          local.get 6
          local.get 8
          i32.add
          i32.store offset=44
          local.get 4
          i32.const 108
          i32.add
          i32.const 16
          i32.store
          local.get 4
          i32.const 100
          i32.add
          i32.const 16
          i32.store
          local.get 4
          i32.const 72
          i32.add
          i32.const 20
          i32.add
          i32.const 17
          i32.store
          local.get 4
          i32.const 84
          i32.add
          i32.const 18
          i32.store
          local.get 4
          i32.const 48
          i32.add
          i32.const 20
          i32.add
          i32.const 5
          i32.store
          local.get 4
          local.get 2
          i32.store offset=88
          local.get 4
          i32.const 15
          i32.store offset=76
          local.get 4
          i64.const 5
          i64.store offset=52 align=4
          local.get 4
          i32.const 1052636
          i32.store offset=48
          local.get 4
          local.get 4
          i32.const 24
          i32.add
          i32.store offset=104
          local.get 4
          local.get 4
          i32.const 16
          i32.add
          i32.store offset=96
          local.get 4
          local.get 4
          i32.const 36
          i32.add
          i32.store offset=80
          local.get 4
          local.get 4
          i32.const 32
          i32.add
          i32.store offset=72
          local.get 4
          local.get 4
          i32.const 72
          i32.add
          i32.store offset=64
          local.get 4
          i32.const 48
          i32.add
          i32.const 1052676
          call $_ZN4core9panicking9panic_fmt17h48f78e79a0848c36E
          unreachable
        end
        local.get 4
        local.get 2
        local.get 3
        local.get 8
        select
        i32.store offset=40
        local.get 4
        i32.const 72
        i32.add
        i32.const 20
        i32.add
        i32.const 16
        i32.store
        local.get 4
        i32.const 84
        i32.add
        i32.const 16
        i32.store
        local.get 4
        i32.const 48
        i32.add
        i32.const 20
        i32.add
        i32.const 3
        i32.store
        local.get 4
        i32.const 15
        i32.store offset=76
        local.get 4
        i64.const 3
        i64.store offset=52 align=4
        local.get 4
        i32.const 1052548
        i32.store offset=48
        local.get 4
        local.get 4
        i32.const 24
        i32.add
        i32.store offset=88
        local.get 4
        local.get 4
        i32.const 16
        i32.add
        i32.store offset=80
        local.get 4
        local.get 4
        i32.const 40
        i32.add
        i32.store offset=72
        local.get 4
        local.get 4
        i32.const 72
        i32.add
        i32.store offset=64
        local.get 4
        i32.const 48
        i32.add
        i32.const 1052572
        call $_ZN4core9panicking9panic_fmt17h48f78e79a0848c36E
        unreachable
      end
      local.get 4
      i32.const 100
      i32.add
      i32.const 16
      i32.store
      local.get 4
      i32.const 72
      i32.add
      i32.const 20
      i32.add
      i32.const 16
      i32.store
      local.get 4
      i32.const 84
      i32.add
      i32.const 15
      i32.store
      local.get 4
      i32.const 48
      i32.add
      i32.const 20
      i32.add
      i32.const 4
      i32.store
      local.get 4
      i32.const 15
      i32.store offset=76
      local.get 4
      i64.const 4
      i64.store offset=52 align=4
      local.get 4
      i32.const 1052588
      i32.store offset=48
      local.get 4
      local.get 4
      i32.const 24
      i32.add
      i32.store offset=96
      local.get 4
      local.get 4
      i32.const 16
      i32.add
      i32.store offset=88
      local.get 4
      local.get 4
      i32.const 12
      i32.add
      i32.store offset=80
      local.get 4
      local.get 4
      i32.const 8
      i32.add
      i32.store offset=72
      local.get 4
      local.get 4
      i32.const 72
      i32.add
      i32.store offset=64
      local.get 4
      i32.const 48
      i32.add
      i32.const 1052620
      call $_ZN4core9panicking9panic_fmt17h48f78e79a0848c36E
      unreachable
    end
    i32.const 1052460
    call $_ZN4core9panicking5panic17h8a3e045054bc310aE
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h24e30c6ee474ecc7E (type 2) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417hcbbe95c74162d77dE)
  (func $_ZN4core3fmt5write17h36bee7754be224fbE (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 36
    i32.add
    local.get 1
    i32.store
    local.get 3
    i32.const 52
    i32.add
    local.get 2
    i32.const 20
    i32.add
    i32.load
    local.tee 4
    i32.store
    local.get 3
    i32.const 3
    i32.store8 offset=56
    local.get 3
    i32.const 44
    i32.add
    local.get 2
    i32.load offset=16
    local.tee 5
    local.get 4
    i32.const 3
    i32.shl
    i32.add
    i32.store
    local.get 3
    i64.const 137438953472
    i64.store offset=8
    local.get 3
    local.get 0
    i32.store offset=32
    i32.const 0
    local.set 6
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    i32.const 0
    i32.store offset=16
    local.get 3
    local.get 5
    i32.store offset=48
    local.get 3
    local.get 5
    i32.store offset=40
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=8
              local.tee 7
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load
              local.set 8
              local.get 2
              i32.load offset=4
              local.tee 9
              local.get 2
              i32.const 12
              i32.add
              i32.load
              local.tee 5
              local.get 5
              local.get 9
              i32.gt_u
              select
              local.tee 10
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              local.get 8
              i32.load
              local.get 8
              i32.load offset=4
              local.get 1
              i32.load offset=12
              call_indirect (type 1)
              br_if 2 (;@3;)
              local.get 8
              i32.const 12
              i32.add
              local.set 5
              local.get 3
              i32.const 56
              i32.add
              local.set 1
              local.get 3
              i32.const 52
              i32.add
              local.set 11
              local.get 3
              i32.const 48
              i32.add
              local.set 12
              i32.const 1
              local.set 6
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 1
                  local.get 7
                  i32.const 32
                  i32.add
                  i32.load8_u
                  i32.store8
                  local.get 3
                  local.get 7
                  i32.const 8
                  i32.add
                  i32.load
                  i32.store offset=12
                  local.get 3
                  local.get 7
                  i32.const 12
                  i32.add
                  i32.load
                  i32.store offset=8
                  i32.const 0
                  local.set 2
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 7
                            i32.const 24
                            i32.add
                            i32.load
                            local.tee 0
                            i32.const 1
                            i32.eq
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              local.get 0
                              i32.const 2
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 3
                              i32.eq
                              br_if 5 (;@8;)
                              local.get 7
                              i32.const 28
                              i32.add
                              i32.load
                              local.set 4
                              br 2 (;@11;)
                            end
                            local.get 3
                            i32.const 8
                            i32.add
                            i32.const 32
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 0
                            local.get 3
                            i32.const 8
                            i32.add
                            i32.const 36
                            i32.add
                            i32.load
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 4
                            local.get 0
                            i32.const 8
                            i32.add
                            i32.store
                            local.get 0
                            i32.load offset=4
                            i32.const 19
                            i32.ne
                            br_if 4 (;@8;)
                            local.get 0
                            i32.load
                            i32.load
                            local.set 4
                            br 1 (;@11;)
                          end
                          local.get 7
                          i32.const 28
                          i32.add
                          i32.load
                          local.tee 0
                          local.get 11
                          i32.load
                          local.tee 4
                          i32.ge_u
                          br_if 2 (;@9;)
                          local.get 12
                          i32.load
                          local.get 0
                          i32.const 3
                          i32.shl
                          i32.add
                          local.tee 0
                          i32.load offset=4
                          i32.const 19
                          i32.ne
                          br_if 3 (;@8;)
                          local.get 0
                          i32.load
                          i32.load
                          local.set 4
                        end
                        i32.const 1
                        local.set 2
                        br 2 (;@8;)
                      end
                      br 1 (;@8;)
                    end
                    i32.const 1052780
                    local.get 0
                    local.get 4
                    call $_ZN4core9panicking18panic_bounds_check17hfdfaf85d42f243ecE
                    unreachable
                  end
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.const 12
                  i32.add
                  local.get 4
                  i32.store
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.const 8
                  i32.add
                  local.get 2
                  i32.store
                  i32.const 0
                  local.set 2
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 7
                            i32.const 16
                            i32.add
                            i32.load
                            local.tee 0
                            i32.const 1
                            i32.eq
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              local.get 0
                              i32.const 2
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 3
                              i32.eq
                              br_if 5 (;@8;)
                              local.get 7
                              i32.const 20
                              i32.add
                              i32.load
                              local.set 4
                              br 2 (;@11;)
                            end
                            local.get 3
                            i32.const 8
                            i32.add
                            i32.const 32
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 0
                            local.get 3
                            i32.const 8
                            i32.add
                            i32.const 36
                            i32.add
                            i32.load
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 4
                            local.get 0
                            i32.const 8
                            i32.add
                            i32.store
                            local.get 0
                            i32.load offset=4
                            i32.const 19
                            i32.ne
                            br_if 4 (;@8;)
                            local.get 0
                            i32.load
                            i32.load
                            local.set 4
                            br 1 (;@11;)
                          end
                          local.get 7
                          i32.const 20
                          i32.add
                          i32.load
                          local.tee 0
                          local.get 11
                          i32.load
                          local.tee 4
                          i32.ge_u
                          br_if 2 (;@9;)
                          local.get 12
                          i32.load
                          local.get 0
                          i32.const 3
                          i32.shl
                          i32.add
                          local.tee 0
                          i32.load offset=4
                          i32.const 19
                          i32.ne
                          br_if 3 (;@8;)
                          local.get 0
                          i32.load
                          i32.load
                          local.set 4
                        end
                        i32.const 1
                        local.set 2
                        br 2 (;@8;)
                      end
                      br 1 (;@8;)
                    end
                    i32.const 1052780
                    local.get 0
                    local.get 4
                    call $_ZN4core9panicking18panic_bounds_check17hfdfaf85d42f243ecE
                    unreachable
                  end
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.const 20
                  i32.add
                  local.get 4
                  i32.store
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.const 16
                  i32.add
                  local.get 2
                  i32.store
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 7
                        i32.load
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 7
                        i32.const 4
                        i32.add
                        i32.load
                        local.tee 2
                        local.get 11
                        i32.load
                        local.tee 4
                        i32.ge_u
                        br_if 2 (;@8;)
                        local.get 12
                        i32.load
                        local.get 2
                        i32.const 3
                        i32.shl
                        i32.add
                        local.set 2
                        br 1 (;@9;)
                      end
                      local.get 3
                      i32.const 8
                      i32.add
                      i32.const 32
                      i32.add
                      local.tee 4
                      i32.load
                      local.tee 2
                      local.get 3
                      i32.const 8
                      i32.add
                      i32.const 36
                      i32.add
                      i32.load
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 4
                      local.get 2
                      i32.const 8
                      i32.add
                      i32.store
                    end
                    local.get 2
                    i32.load
                    local.get 3
                    i32.const 8
                    i32.add
                    local.get 2
                    i32.const 4
                    i32.add
                    i32.load
                    call_indirect (type 2)
                    br_if 5 (;@3;)
                    local.get 6
                    local.get 10
                    i32.ge_u
                    br_if 4 (;@4;)
                    local.get 5
                    i32.const -4
                    i32.add
                    local.set 2
                    local.get 5
                    i32.load
                    local.set 4
                    local.get 5
                    i32.const 8
                    i32.add
                    local.set 5
                    local.get 7
                    i32.const 36
                    i32.add
                    local.set 7
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 6
                    local.get 3
                    i32.const 8
                    i32.add
                    i32.const 24
                    i32.add
                    i32.load
                    local.get 2
                    i32.load
                    local.get 4
                    local.get 3
                    i32.const 8
                    i32.add
                    i32.const 28
                    i32.add
                    i32.load
                    i32.load offset=12
                    call_indirect (type 1)
                    i32.eqz
                    br_if 1 (;@7;)
                    br 5 (;@3;)
                  end
                end
                i32.const 1052764
                local.get 2
                local.get 4
                call $_ZN4core9panicking18panic_bounds_check17hfdfaf85d42f243ecE
                unreachable
              end
              i32.const 1052460
              call $_ZN4core9panicking5panic17h8a3e045054bc310aE
              unreachable
            end
            local.get 2
            i32.load
            local.set 8
            local.get 2
            i32.load offset=4
            local.tee 9
            local.get 4
            local.get 4
            local.get 9
            i32.gt_u
            select
            local.tee 10
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 8
            i32.load
            local.get 8
            i32.load offset=4
            local.get 1
            i32.load offset=12
            call_indirect (type 1)
            br_if 1 (;@3;)
            local.get 8
            i32.const 12
            i32.add
            local.set 7
            local.get 3
            i32.const 32
            i32.add
            local.set 0
            local.get 3
            i32.const 36
            i32.add
            local.set 1
            i32.const 1
            local.set 6
            loop  ;; label = @5
              local.get 5
              i32.load
              local.get 3
              i32.const 8
              i32.add
              local.get 5
              i32.const 4
              i32.add
              i32.load
              call_indirect (type 2)
              br_if 2 (;@3;)
              local.get 6
              local.get 10
              i32.ge_u
              br_if 1 (;@4;)
              local.get 7
              i32.const -4
              i32.add
              local.set 2
              local.get 7
              i32.load
              local.set 4
              local.get 7
              i32.const 8
              i32.add
              local.set 7
              local.get 5
              i32.const 8
              i32.add
              local.set 5
              local.get 6
              i32.const 1
              i32.add
              local.set 6
              local.get 0
              i32.load
              local.get 2
              i32.load
              local.get 4
              local.get 1
              i32.load
              i32.load offset=12
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 9
          local.get 6
          i32.le_u
          br_if 1 (;@2;)
          local.get 3
          i32.const 32
          i32.add
          i32.load
          local.get 8
          local.get 6
          i32.const 3
          i32.shl
          i32.add
          local.tee 7
          i32.load
          local.get 7
          i32.load offset=4
          local.get 3
          i32.const 36
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1
        local.set 7
        br 1 (;@1;)
      end
      i32.const 0
      local.set 7
    end
    local.get 3
    i32.const 64
    i32.add
    global.set 0
    local.get 7)
  (func $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1e216c1ff342c2b9E (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 20
    i32.add
    i32.const 20
    i32.store
    local.get 2
    i32.const 20
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=16
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.set 0
    local.get 1
    i32.load offset=24
    local.set 1
    local.get 2
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i64.const 2
    i64.store offset=28 align=4
    local.get 2
    i32.const 1052412
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 1
    local.get 0
    local.get 2
    i32.const 24
    i32.add
    call $_ZN4core3fmt5write17h36bee7754be224fbE
    local.set 1
    local.get 2
    i32.const 48
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hd40a9796954c8702E (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 3
              i32.const 16
              i32.and
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.set 4
              local.get 3
              i32.const 32
              i32.and
              br_if 1 (;@4;)
              local.get 4
              i64.extend_i32_u
              i32.const 1
              local.get 1
              call $_ZN4core3fmt3num3imp7fmt_u6417hcbbe95c74162d77dE
              local.set 0
              br 2 (;@3;)
            end
            local.get 0
            i32.load
            local.set 4
            i32.const 0
            local.set 0
            loop  ;; label = @5
              local.get 2
              local.get 0
              i32.add
              i32.const 127
              i32.add
              local.get 4
              i32.const 15
              i32.and
              local.tee 3
              i32.const 48
              i32.or
              local.get 3
              i32.const 87
              i32.add
              local.get 3
              i32.const 10
              i32.lt_u
              select
              i32.store8
              local.get 0
              i32.const -1
              i32.add
              local.set 0
              local.get 4
              i32.const 4
              i32.shr_u
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 0
            i32.const 128
            i32.add
            local.tee 4
            i32.const 129
            i32.ge_u
            br_if 2 (;@2;)
            local.get 1
            i32.const 1
            i32.const 1049112
            i32.const 2
            local.get 2
            local.get 0
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 0
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17h8f2b74430b619055E
            local.set 0
            br 1 (;@3;)
          end
          i32.const 0
          local.set 0
          loop  ;; label = @4
            local.get 2
            local.get 0
            i32.add
            i32.const 127
            i32.add
            local.get 4
            i32.const 15
            i32.and
            local.tee 3
            i32.const 48
            i32.or
            local.get 3
            i32.const 55
            i32.add
            local.get 3
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get 0
            i32.const -1
            i32.add
            local.set 0
            local.get 4
            i32.const 4
            i32.shr_u
            local.tee 4
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 128
          i32.add
          local.tee 4
          i32.const 129
          i32.ge_u
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.const 1049112
          i32.const 2
          local.get 2
          local.get 0
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get 0
          i32.sub
          call $_ZN4core3fmt9Formatter12pad_integral17h8f2b74430b619055E
          local.set 0
        end
        local.get 2
        i32.const 128
        i32.add
        global.set 0
        local.get 0
        return
      end
      local.get 4
      i32.const 128
      call $_ZN4core5slice22slice_index_order_fail17h44889e79457bda08E
      unreachable
    end
    local.get 4
    i32.const 128
    call $_ZN4core5slice22slice_index_order_fail17h44889e79457bda08E
    unreachable)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h0013264383c6afa3E (type 4) (param i32) (result i64)
    i64.const -1059640658066352774)
  (func $_ZN4core5panic9PanicInfo7message17h887141be22f18ef9E (type 7) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $_ZN4core5panic9PanicInfo8location17h4457b5ae94621235E (type 7) (param i32) (result i32)
    local.get 0
    i32.const 12
    i32.add)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he92dec6b09d596aeE (type 2) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17h7f16e71e3af941cdE)
  (func $_ZN4core5panic8Location20internal_constructor17hd392d73ecb76f1a1E (type 10) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 4
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN4core5panic8Location4file17h5ba102e8b1dd1f0cE (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store align=4)
  (func $_ZN4core5panic8Location4line17h8cbfc66d2bfba14bE (type 7) (param i32) (result i32)
    local.get 0
    i32.load offset=8)
  (func $_ZN4core5panic8Location6column17h0d2f2a30e460503fE (type 7) (param i32) (result i32)
    local.get 0
    i32.load offset=12)
  (func $_ZN4core3fmt8builders11DebugStruct5field17hf0b14c44800e8a4cE (type 11) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    i32.const 1
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 5
      i32.const 1
      i32.const 2
      local.get 0
      i32.load8_u offset=5
      local.tee 1
      select
      local.tee 2
      i32.store offset=20
      local.get 5
      i32.const 1049318
      i32.const 1049319
      local.get 1
      select
      local.tee 6
      i32.store offset=16
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load
            local.tee 1
            i32.load8_u
            i32.const 4
            i32.and
            br_if 0 (;@4;)
            local.get 5
            i32.const 92
            i32.add
            i32.const 16
            i32.store
            local.get 5
            i32.const 16
            i32.store offset=84
            local.get 1
            i32.const 28
            i32.add
            i32.load
            local.set 2
            local.get 5
            local.get 5
            i32.const 8
            i32.add
            i32.store offset=88
            local.get 5
            local.get 5
            i32.const 16
            i32.add
            i32.store offset=80
            local.get 1
            i32.load offset=24
            local.set 1
            local.get 5
            i32.const 44
            i32.add
            i32.const 2
            i32.store
            local.get 5
            i64.const 3
            i64.store offset=28 align=4
            local.get 5
            i32.const 1052716
            i32.store offset=24
            local.get 5
            local.get 5
            i32.const 80
            i32.add
            i32.store offset=40
            local.get 1
            local.get 2
            local.get 5
            i32.const 24
            i32.add
            call $_ZN4core3fmt5write17h36bee7754be224fbE
            br_if 1 (;@3;)
            local.get 3
            local.get 0
            i32.load
            local.get 4
            i32.load offset=12
            call_indirect (type 2)
            local.set 1
            br 3 (;@1;)
          end
          local.get 5
          i32.const 0
          i32.store8 offset=88
          local.get 1
          i64.load offset=16 align=4
          local.set 7
          local.get 1
          i64.load offset=8 align=4
          local.set 8
          local.get 5
          i32.const 52
          i32.add
          i32.const 1052692
          i32.store
          local.get 5
          local.get 1
          i64.load offset=24 align=4
          i64.store offset=80
          local.get 1
          i64.load offset=32 align=4
          local.set 9
          local.get 1
          i64.load offset=40 align=4
          local.set 10
          local.get 5
          local.get 1
          i32.load8_u offset=48
          i32.store8 offset=72
          local.get 1
          i64.load align=4
          local.set 11
          local.get 5
          local.get 8
          i64.store offset=32
          local.get 5
          local.get 7
          i64.store offset=40
          local.get 5
          local.get 10
          i64.store offset=64
          local.get 5
          local.get 9
          i64.store offset=56
          local.get 5
          local.get 11
          i64.store offset=24
          local.get 5
          local.get 5
          i32.const 80
          i32.add
          i32.store offset=48
          local.get 5
          i32.const 80
          i32.add
          local.get 6
          local.get 2
          call $_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h5ecab90504b77e0cE
          br_if 0 (;@3;)
          local.get 5
          i32.const 80
          i32.add
          i32.const 1049321
          i32.const 1
          call $_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h5ecab90504b77e0cE
          br_if 0 (;@3;)
          local.get 5
          i32.const 80
          i32.add
          local.get 5
          i32.load offset=8
          local.get 5
          i32.load offset=12
          call $_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h5ecab90504b77e0cE
          br_if 0 (;@3;)
          local.get 5
          i32.const 80
          i32.add
          i32.const 1048865
          i32.const 2
          call $_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h5ecab90504b77e0cE
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      local.get 5
      i32.const 24
      i32.add
      local.get 4
      i32.load offset=12
      call_indirect (type 2)
      local.set 1
    end
    local.get 0
    i32.const 1
    i32.store8 offset=5
    local.get 0
    i32.const 4
    i32.add
    local.get 1
    i32.store8
    local.get 5
    i32.const 96
    i32.add
    global.set 0
    local.get 0)
  (func $_ZN4core5slice6memchr6memchr17h0d81834c5ffcfb16E (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 3
        i32.and
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        i32.const 4
        local.get 5
        i32.sub
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        local.get 5
        local.get 5
        local.get 3
        i32.gt_u
        select
        local.tee 4
        i32.add
        local.set 6
        i32.const 0
        local.set 5
        local.get 1
        i32.const 255
        i32.and
        local.set 7
        local.get 4
        local.set 8
        local.get 2
        local.set 9
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 6
              local.get 9
              i32.sub
              i32.const 3
              i32.le_u
              br_if 1 (;@4;)
              local.get 5
              local.get 9
              i32.load8_u
              local.tee 10
              local.get 7
              i32.ne
              i32.add
              local.set 5
              local.get 10
              local.get 7
              i32.eq
              br_if 2 (;@3;)
              local.get 5
              local.get 9
              i32.const 1
              i32.add
              i32.load8_u
              local.tee 10
              local.get 7
              i32.ne
              i32.add
              local.set 5
              local.get 10
              local.get 7
              i32.eq
              br_if 2 (;@3;)
              local.get 5
              local.get 9
              i32.const 2
              i32.add
              i32.load8_u
              local.tee 10
              local.get 7
              i32.ne
              i32.add
              local.set 5
              local.get 10
              local.get 7
              i32.eq
              br_if 2 (;@3;)
              local.get 5
              local.get 9
              i32.const 3
              i32.add
              i32.load8_u
              local.tee 10
              local.get 7
              i32.ne
              i32.add
              local.set 5
              local.get 8
              i32.const -4
              i32.add
              local.set 8
              local.get 9
              i32.const 4
              i32.add
              local.set 9
              local.get 10
              local.get 7
              i32.ne
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          i32.const 0
          local.set 7
          local.get 1
          i32.const 255
          i32.and
          local.set 6
          loop  ;; label = @4
            local.get 8
            i32.eqz
            br_if 2 (;@2;)
            local.get 9
            local.get 7
            i32.add
            local.set 10
            local.get 8
            i32.const -1
            i32.add
            local.set 8
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 10
            i32.load8_u
            local.tee 10
            local.get 6
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 10
          local.get 1
          i32.const 255
          i32.and
          i32.eq
          i32.const 1
          i32.add
          i32.const 1
          i32.and
          local.get 5
          i32.add
          local.get 7
          i32.add
          i32.const -1
          i32.add
          local.set 5
        end
        i32.const 1
        local.set 9
        br 1 (;@1;)
      end
      local.get 1
      i32.const 255
      i32.and
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 8
          i32.lt_u
          br_if 0 (;@3;)
          local.get 4
          local.get 3
          i32.const -8
          i32.add
          local.tee 10
          i32.gt_u
          br_if 0 (;@3;)
          local.get 7
          i32.const 16843009
          i32.mul
          local.set 5
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              local.get 4
              i32.add
              local.tee 9
              i32.const 4
              i32.add
              i32.load
              local.get 5
              i32.xor
              local.tee 8
              i32.const -1
              i32.xor
              local.get 8
              i32.const -16843009
              i32.add
              i32.and
              local.get 9
              i32.load
              local.get 5
              i32.xor
              local.tee 9
              i32.const -1
              i32.xor
              local.get 9
              i32.const -16843009
              i32.add
              i32.and
              i32.or
              i32.const -2139062144
              i32.and
              br_if 1 (;@4;)
              local.get 4
              i32.const 8
              i32.add
              local.tee 4
              local.get 10
              i32.le_u
              br_if 0 (;@5;)
            end
          end
          local.get 4
          local.get 3
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 2
        local.get 4
        i32.add
        local.set 9
        local.get 2
        local.get 3
        i32.add
        local.set 2
        local.get 3
        local.get 4
        i32.sub
        local.set 8
        i32.const 0
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 2
                local.get 9
                i32.sub
                i32.const 3
                i32.le_u
                br_if 1 (;@5;)
                local.get 5
                local.get 9
                i32.load8_u
                local.tee 10
                local.get 7
                i32.ne
                i32.add
                local.set 5
                local.get 10
                local.get 7
                i32.eq
                br_if 2 (;@4;)
                local.get 5
                local.get 9
                i32.const 1
                i32.add
                i32.load8_u
                local.tee 10
                local.get 7
                i32.ne
                i32.add
                local.set 5
                local.get 10
                local.get 7
                i32.eq
                br_if 2 (;@4;)
                local.get 5
                local.get 9
                i32.const 2
                i32.add
                i32.load8_u
                local.tee 10
                local.get 7
                i32.ne
                i32.add
                local.set 5
                local.get 10
                local.get 7
                i32.eq
                br_if 2 (;@4;)
                local.get 5
                local.get 9
                i32.const 3
                i32.add
                i32.load8_u
                local.tee 10
                local.get 7
                i32.ne
                i32.add
                local.set 5
                local.get 8
                i32.const -4
                i32.add
                local.set 8
                local.get 9
                i32.const 4
                i32.add
                local.set 9
                local.get 10
                local.get 7
                i32.ne
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            i32.const 0
            local.set 7
            local.get 1
            i32.const 255
            i32.and
            local.set 2
            loop  ;; label = @5
              local.get 8
              i32.eqz
              br_if 2 (;@3;)
              local.get 9
              local.get 7
              i32.add
              local.set 10
              local.get 8
              i32.const -1
              i32.add
              local.set 8
              local.get 7
              i32.const 1
              i32.add
              local.set 7
              local.get 10
              i32.load8_u
              local.tee 10
              local.get 2
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 10
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            i32.const 1
            i32.add
            i32.const 1
            i32.and
            local.get 5
            i32.add
            local.get 7
            i32.add
            i32.const -1
            i32.add
            local.set 5
          end
          i32.const 1
          local.set 9
          local.get 5
          local.get 4
          i32.add
          local.set 5
          br 2 (;@1;)
        end
        i32.const 0
        local.set 9
        local.get 5
        local.get 7
        i32.add
        local.get 4
        i32.add
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      local.get 3
      call $_ZN4core5slice22slice_index_order_fail17h44889e79457bda08E
      unreachable
    end
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 9
    i32.store)
  (func $_ZN4core7unicode9bool_trie8BoolTrie6lookup17h908e306174a7f64eE (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 2048
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 1
                  i32.const 3
                  i32.shr_u
                  i32.const 536870904
                  i32.and
                  i32.add
                  local.set 0
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 1
                  i32.const 65536
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 1
                  i32.const 6
                  i32.shr_u
                  i32.const -32
                  i32.add
                  local.tee 2
                  i32.const 992
                  i32.ge_u
                  br_if 2 (;@5;)
                  local.get 0
                  i32.const 260
                  i32.add
                  i32.load
                  local.tee 3
                  local.get 0
                  local.get 2
                  i32.add
                  i32.const 280
                  i32.add
                  i32.load8_u
                  local.tee 2
                  i32.le_u
                  br_if 3 (;@4;)
                  local.get 0
                  i32.load offset=256
                  local.get 2
                  i32.const 3
                  i32.shl
                  i32.add
                  local.set 0
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 12
                i32.shr_u
                i32.const -16
                i32.add
                local.tee 2
                i32.const 256
                i32.ge_u
                br_if 3 (;@3;)
                local.get 0
                local.get 2
                i32.add
                i32.const 1272
                i32.add
                i32.load8_u
                i32.const 6
                i32.shl
                local.get 1
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.or
                local.tee 2
                local.get 0
                i32.const 268
                i32.add
                i32.load
                local.tee 3
                i32.ge_u
                br_if 4 (;@2;)
                local.get 0
                i32.const 276
                i32.add
                i32.load
                local.tee 3
                local.get 0
                i32.load offset=264
                local.get 2
                i32.add
                i32.load8_u
                local.tee 2
                i32.le_u
                br_if 5 (;@1;)
                local.get 0
                i32.load offset=272
                local.get 2
                i32.const 3
                i32.shl
                i32.add
                local.set 0
              end
              local.get 0
              i64.load
              i64.const 1
              local.get 1
              i32.const 63
              i32.and
              i64.extend_i32_u
              i64.shl
              i64.and
              i64.const 0
              i64.ne
              return
            end
            i32.const 1052796
            local.get 2
            i32.const 992
            call $_ZN4core9panicking18panic_bounds_check17hfdfaf85d42f243ecE
            unreachable
          end
          i32.const 1052812
          local.get 2
          local.get 3
          call $_ZN4core9panicking18panic_bounds_check17hfdfaf85d42f243ecE
          unreachable
        end
        i32.const 1052828
        local.get 2
        i32.const 256
        call $_ZN4core9panicking18panic_bounds_check17hfdfaf85d42f243ecE
        unreachable
      end
      i32.const 1052844
      local.get 2
      local.get 3
      call $_ZN4core9panicking18panic_bounds_check17hfdfaf85d42f243ecE
      unreachable
    end
    i32.const 1052860
    local.get 2
    local.get 3
    call $_ZN4core9panicking18panic_bounds_check17hfdfaf85d42f243ecE
    unreachable)
  (func $_ZN4core7unicode9printable5check17h7ce5c7cbb7237fcdE (type 12) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 1
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                local.get 2
                i32.const 1
                i32.shl
                i32.add
                local.set 8
                local.get 0
                i32.const 65280
                i32.and
                i32.const 8
                i32.shr_u
                local.set 9
                i32.const 0
                local.set 10
                local.get 0
                i32.const 255
                i32.and
                local.set 11
                loop  ;; label = @7
                  local.get 1
                  i32.const 2
                  i32.add
                  local.set 12
                  local.get 10
                  local.get 1
                  i32.load8_u offset=1
                  local.tee 2
                  i32.add
                  local.set 13
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.load8_u
                      local.tee 1
                      local.get 9
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 13
                      local.get 10
                      i32.lt_u
                      br_if 7 (;@2;)
                      local.get 13
                      local.get 4
                      i32.gt_u
                      br_if 8 (;@1;)
                      local.get 3
                      local.get 10
                      i32.add
                      local.set 1
                      loop  ;; label = @10
                        local.get 2
                        i32.eqz
                        br_if 2 (;@8;)
                        local.get 2
                        i32.const -1
                        i32.add
                        local.set 2
                        local.get 1
                        i32.load8_u
                        local.set 10
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 1
                        local.get 10
                        local.get 11
                        i32.ne
                        br_if 0 (;@10;)
                        br 5 (;@5;)
                      end
                    end
                    local.get 1
                    local.get 9
                    i32.gt_u
                    br_if 2 (;@6;)
                    local.get 13
                    local.set 10
                    local.get 12
                    local.set 1
                    local.get 12
                    local.get 8
                    i32.ne
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                  local.get 13
                  local.set 10
                  local.get 12
                  local.set 1
                  local.get 12
                  local.get 8
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
              local.get 5
              local.get 6
              i32.add
              local.set 11
              local.get 0
              i32.const 65535
              i32.and
              local.set 1
              i32.const 1
              local.set 7
              loop  ;; label = @6
                local.get 5
                i32.const 1
                i32.add
                local.set 10
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.load8_u
                    local.tee 2
                    i32.const 24
                    i32.shl
                    i32.const 24
                    i32.shr_s
                    local.tee 13
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 10
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 10
                  local.get 11
                  i32.eq
                  br_if 4 (;@3;)
                  local.get 13
                  i32.const 127
                  i32.and
                  i32.const 8
                  i32.shl
                  local.get 5
                  i32.const 1
                  i32.add
                  i32.load8_u
                  i32.or
                  local.set 2
                  local.get 5
                  i32.const 2
                  i32.add
                  local.set 5
                end
                local.get 1
                local.get 2
                i32.sub
                local.tee 1
                i32.const 0
                i32.lt_s
                br_if 2 (;@4;)
                local.get 7
                i32.const 1
                i32.xor
                local.set 7
                local.get 5
                local.get 11
                i32.ne
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            i32.const 0
            local.set 7
          end
          local.get 7
          i32.const 1
          i32.and
          return
        end
        i32.const 1052460
        call $_ZN4core9panicking5panic17h8a3e045054bc310aE
        unreachable
      end
      local.get 10
      local.get 13
      call $_ZN4core5slice22slice_index_order_fail17h44889e79457bda08E
      unreachable
    end
    local.get 13
    local.get 4
    call $_ZN4core5slice20slice_index_len_fail17hc9e2213a794056afE
    unreachable)
  (func $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb0550629f5ffdd6E (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32)
    i32.const 1
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.load offset=24
      i32.const 39
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=16
      call_indirect (type 2)
      br_if 0 (;@1;)
      i32.const 2
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load
                          local.tee 0
                          i32.const -9
                          i32.add
                          local.tee 3
                          i32.const 30
                          i32.gt_u
                          br_if 0 (;@11;)
                          i32.const 116
                          local.set 4
                          block  ;; label = @12
                            local.get 3
                            br_table 10 (;@2;) 0 (;@12;) 2 (;@10;) 2 (;@10;) 3 (;@9;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 6 (;@6;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 6 (;@6;) 10 (;@2;)
                          end
                          i32.const 110
                          local.set 4
                          br 3 (;@8;)
                        end
                        local.get 0
                        i32.const 92
                        i32.eq
                        br_if 4 (;@6;)
                      end
                      i32.const 1052880
                      local.get 0
                      call $_ZN4core7unicode9bool_trie8BoolTrie6lookup17h908e306174a7f64eE
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.clz
                      i32.const 2
                      i32.shr_u
                      i32.const 7
                      i32.xor
                      i64.extend_i32_u
                      i64.const 21474836480
                      i64.or
                      local.set 5
                      br 5 (;@4;)
                    end
                    i32.const 114
                    local.set 4
                  end
                  br 5 (;@2;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.const 65535
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 1049392
                    i32.const 40
                    i32.const 1049472
                    i32.const 303
                    i32.const 1049775
                    i32.const 316
                    call $_ZN4core7unicode9printable5check17h7ce5c7cbb7237fcdE
                    i32.eqz
                    br_if 3 (;@5;)
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 0
                    i32.const 131071
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 1050091
                    i32.const 33
                    i32.const 1050157
                    i32.const 158
                    i32.const 1050315
                    i32.const 381
                    call $_ZN4core7unicode9printable5check17h7ce5c7cbb7237fcdE
                    br_if 1 (;@7;)
                    br 3 (;@5;)
                  end
                  local.get 0
                  i32.const 917999
                  i32.gt_u
                  br_if 2 (;@5;)
                  local.get 0
                  i32.const -195102
                  i32.add
                  i32.const 722658
                  i32.lt_u
                  br_if 2 (;@5;)
                  local.get 0
                  i32.const -191457
                  i32.add
                  i32.const 3103
                  i32.lt_u
                  br_if 2 (;@5;)
                  local.get 0
                  i32.const -183970
                  i32.add
                  i32.const 14
                  i32.lt_u
                  br_if 2 (;@5;)
                  local.get 0
                  i32.const 2097150
                  i32.and
                  i32.const 178206
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 0
                  i32.const -173783
                  i32.add
                  i32.const 41
                  i32.lt_u
                  br_if 2 (;@5;)
                  local.get 0
                  i32.const -177973
                  i32.add
                  i32.const 10
                  i32.le_u
                  br_if 2 (;@5;)
                end
                i32.const 1
                local.set 2
              end
              br 2 (;@3;)
            end
            local.get 0
            i32.const 1
            i32.or
            i32.clz
            i32.const 2
            i32.shr_u
            i32.const 7
            i32.xor
            i64.extend_i32_u
            i64.const 21474836480
            i64.or
            local.set 5
          end
          i32.const 3
          local.set 2
        end
        local.get 0
        local.set 4
      end
      local.get 1
      i32.const 24
      i32.add
      local.set 3
      local.get 1
      i32.const 28
      i32.add
      local.set 6
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 2
                            i32.const 1
                            i32.eq
                            br_if 0 (;@12;)
                            i32.const 92
                            local.set 0
                            local.get 2
                            i32.const 2
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 2
                            i32.const 3
                            i32.ne
                            br_if 10 (;@2;)
                            local.get 5
                            i64.const 32
                            i64.shr_u
                            i32.wrap_i64
                            i32.const 255
                            i32.and
                            i32.const -1
                            i32.add
                            local.tee 2
                            i32.const 4
                            i32.gt_u
                            br_if 10 (;@2;)
                            block  ;; label = @13
                              local.get 2
                              br_table 0 (;@13;) 3 (;@10;) 4 (;@9;) 5 (;@8;) 6 (;@7;) 0 (;@13;)
                            end
                            local.get 5
                            i64.const -1095216660481
                            i64.and
                            local.set 5
                            i32.const 125
                            local.set 0
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.set 2
                          local.get 4
                          local.set 0
                          br 7 (;@4;)
                        end
                        i32.const 1
                        local.set 2
                        br 6 (;@4;)
                      end
                      local.get 4
                      local.get 5
                      i32.wrap_i64
                      local.tee 7
                      i32.const 2
                      i32.shl
                      i32.const 28
                      i32.and
                      i32.shr_u
                      i32.const 15
                      i32.and
                      local.tee 2
                      i32.const 48
                      i32.or
                      local.get 2
                      i32.const 87
                      i32.add
                      local.get 2
                      i32.const 10
                      i32.lt_u
                      select
                      local.set 0
                      local.get 7
                      i32.eqz
                      br_if 3 (;@6;)
                      local.get 5
                      i64.const -1
                      i64.add
                      i64.const 4294967295
                      i64.and
                      local.get 5
                      i64.const -4294967296
                      i64.and
                      i64.or
                      local.set 5
                      br 4 (;@5;)
                    end
                    local.get 5
                    i64.const -1095216660481
                    i64.and
                    i64.const 8589934592
                    i64.or
                    local.set 5
                    i32.const 123
                    local.set 0
                    br 3 (;@5;)
                  end
                  local.get 5
                  i64.const -1095216660481
                  i64.and
                  i64.const 12884901888
                  i64.or
                  local.set 5
                  i32.const 117
                  local.set 0
                  br 2 (;@5;)
                end
                local.get 5
                i64.const -1095216660481
                i64.and
                i64.const 17179869184
                i64.or
                local.set 5
                br 1 (;@5;)
              end
              local.get 5
              i64.const -1095216660481
              i64.and
              i64.const 4294967296
              i64.or
              local.set 5
            end
            i32.const 3
            local.set 2
          end
          local.get 3
          i32.load
          local.get 0
          local.get 6
          i32.load
          i32.load offset=16
          call_indirect (type 2)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      local.get 1
      i32.const 24
      i32.add
      i32.load
      i32.const 39
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=16
      call_indirect (type 2)
      local.set 2
    end
    local.get 2)
  (func $_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h5ecab90504b77e0cE (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.const 40
              i32.add
              local.set 4
              local.get 0
              i32.const 8
              i32.add
              local.set 5
              local.get 3
              i32.const 32
              i32.add
              local.set 6
              local.get 3
              i32.const 28
              i32.add
              local.set 7
              local.get 3
              i32.const 36
              i32.add
              local.set 8
              local.get 0
              i32.const 4
              i32.add
              local.set 9
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.load8_u
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load
                  i32.const 1049314
                  i32.const 4
                  local.get 9
                  i32.load
                  i32.load offset=12
                  call_indirect (type 1)
                  br_if 3 (;@4;)
                end
                local.get 4
                i32.const 10
                i32.store
                local.get 6
                i64.const 4294967306
                i64.store
                local.get 7
                local.get 2
                i32.store
                local.get 3
                i32.const 16
                i32.add
                i32.const 8
                i32.add
                local.tee 10
                i32.const 0
                i32.store
                local.get 3
                local.get 2
                i32.store offset=20
                local.get 3
                local.get 1
                i32.store offset=16
                local.get 3
                i32.const 8
                i32.add
                i32.const 10
                local.get 1
                local.get 2
                call $_ZN4core5slice6memchr6memchr17h0d81834c5ffcfb16E
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 3
                          i32.load offset=8
                          i32.const 1
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 3
                          i32.load offset=12
                          local.set 11
                          loop  ;; label = @12
                            local.get 10
                            local.get 11
                            local.get 10
                            i32.load
                            i32.add
                            i32.const 1
                            i32.add
                            local.tee 11
                            i32.store
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 11
                                local.get 8
                                i32.load
                                local.tee 12
                                i32.ge_u
                                br_if 0 (;@14;)
                                local.get 3
                                i32.load offset=20
                                local.set 13
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.load offset=20
                              local.tee 13
                              local.get 11
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 12
                              i32.const 5
                              i32.ge_u
                              br_if 5 (;@8;)
                              local.get 3
                              i32.load offset=16
                              local.get 11
                              local.get 12
                              i32.sub
                              local.tee 14
                              i32.add
                              local.tee 15
                              local.get 4
                              i32.eq
                              br_if 4 (;@9;)
                              local.get 15
                              local.get 4
                              local.get 12
                              call $memcmp
                              i32.eqz
                              br_if 4 (;@9;)
                            end
                            local.get 7
                            i32.load
                            local.tee 15
                            local.get 11
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 13
                            local.get 15
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 3
                            local.get 3
                            i32.const 16
                            i32.add
                            local.get 12
                            i32.add
                            i32.const 23
                            i32.add
                            i32.load8_u
                            local.get 3
                            i32.load offset=16
                            local.get 11
                            i32.add
                            local.get 15
                            local.get 11
                            i32.sub
                            call $_ZN4core5slice6memchr6memchr17h0d81834c5ffcfb16E
                            local.get 3
                            i32.load offset=4
                            local.set 11
                            local.get 3
                            i32.load
                            i32.const 1
                            i32.eq
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 10
                        local.get 7
                        i32.load
                        i32.store
                      end
                      local.get 5
                      i32.const 0
                      i32.store8
                      local.get 2
                      local.set 11
                      br 2 (;@7;)
                    end
                    local.get 5
                    i32.const 1
                    i32.store8
                    local.get 14
                    i32.const 1
                    i32.add
                    local.set 11
                    br 1 (;@7;)
                  end
                  local.get 12
                  i32.const 4
                  call $_ZN4core5slice20slice_index_len_fail17hc9e2213a794056afE
                  unreachable
                end
                local.get 9
                i32.load
                local.set 15
                local.get 0
                i32.load
                local.set 12
                block  ;; label = @7
                  local.get 11
                  i32.eqz
                  local.get 2
                  local.get 11
                  i32.eq
                  i32.or
                  local.tee 10
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 11
                  i32.le_u
                  br_if 5 (;@2;)
                  local.get 1
                  local.get 11
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 5 (;@2;)
                end
                local.get 12
                local.get 1
                local.get 11
                local.get 15
                i32.load offset=12
                call_indirect (type 1)
                br_if 2 (;@4;)
                block  ;; label = @7
                  local.get 10
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 11
                  i32.le_u
                  br_if 6 (;@1;)
                  local.get 1
                  local.get 11
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 6 (;@1;)
                end
                local.get 1
                local.get 11
                i32.add
                local.set 1
                local.get 2
                local.get 11
                i32.sub
                local.tee 2
                br_if 0 (;@6;)
              end
            end
            i32.const 0
            local.set 11
            br 1 (;@3;)
          end
          i32.const 1
          local.set 11
        end
        local.get 3
        i32.const 48
        i32.add
        global.set 0
        local.get 11
        return
      end
      local.get 1
      local.get 2
      i32.const 0
      local.get 11
      call $_ZN4core3str16slice_error_fail17hd5728b2706c95849E
      unreachable
    end
    local.get 1
    local.get 2
    local.get 11
    local.get 2
    call $_ZN4core3str16slice_error_fail17hd5728b2706c95849E
    unreachable)
  (func $_ZN4core3fmt5Write10write_char17h7a414e06ff1425d8E (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 127
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.store8 offset=12
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 2047
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 31
        i32.and
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 65535
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=14
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 12
        i32.shr_u
        i32.const 15
        i32.and
        i32.const 224
        i32.or
        i32.store8 offset=12
        i32.const 3
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=15
      local.get 2
      local.get 1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8 offset=12
      local.get 2
      local.get 1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=14
      local.get 2
      local.get 1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      i32.const 4
      local.set 1
    end
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h5ecab90504b77e0cE
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN4core3fmt5Write9write_fmt17h8adc816c7878656aE (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1052740
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h36bee7754be224fbE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h66caff58f3d618a4E (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call $_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h5ecab90504b77e0cE)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd95c787aac3194dbE (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN4core3fmt5Write10write_char17h7a414e06ff1425d8E)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h7bcc927f30e22740E (type 2) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1052740
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h36bee7754be224fbE
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $_ZN4core3fmt10ArgumentV110show_usize17h2c82148de7e8ffe5E (type 2) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417hcbbe95c74162d77dE)
  (func $_ZN4core3fmt3num3imp7fmt_u6417hcbbe95c74162d77dE (type 13) (param i64 i32 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    i32.const 39
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.lt_u
        br_if 0 (;@2;)
        i32.const 39
        local.set 4
        loop  ;; label = @3
          local.get 3
          i32.const 9
          i32.add
          local.get 4
          i32.add
          local.tee 5
          i32.const -4
          i32.add
          local.get 0
          local.get 0
          i64.const 10000
          i64.div_u
          local.tee 6
          i64.const 10000
          i64.mul
          i64.sub
          i32.wrap_i64
          local.tee 7
          i32.const 100
          i32.div_u
          local.tee 8
          i32.const 1
          i32.shl
          i32.const 1049114
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 5
          i32.const -2
          i32.add
          local.get 7
          local.get 8
          i32.const 100
          i32.mul
          i32.sub
          i32.const 1
          i32.shl
          i32.const 1049114
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 4
          i32.const -4
          i32.add
          local.set 4
          local.get 0
          i64.const 99999999
          i64.gt_u
          local.set 5
          local.get 6
          local.set 0
          local.get 5
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 0
      local.set 6
    end
    block  ;; label = @1
      local.get 6
      i32.wrap_i64
      local.tee 5
      i32.const 99
      i32.le_s
      br_if 0 (;@1;)
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -2
      i32.add
      local.tee 4
      i32.add
      local.get 6
      i32.wrap_i64
      local.tee 5
      local.get 5
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 5
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1049114
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 9
        i32.gt_s
        br_if 0 (;@2;)
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -1
        i32.add
        local.tee 4
        i32.add
        local.get 5
        i32.const 48
        i32.add
        i32.store8
        br 1 (;@1;)
      end
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -2
      i32.add
      local.tee 4
      i32.add
      local.get 5
      i32.const 1
      i32.shl
      i32.const 1049114
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    local.get 2
    local.get 1
    i32.const 1048748
    i32.const 0
    local.get 3
    i32.const 9
    i32.add
    local.get 4
    i32.add
    i32.const 39
    local.get 4
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h8f2b74430b619055E
    local.set 4
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 4)
  (func $_ZN4core3fmt9Formatter12pad_integral17h8f2b74430b619055E (type 14) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        i32.const 43
        i32.const 1114112
        local.get 0
        i32.load
        local.tee 6
        i32.const 1
        i32.and
        local.tee 1
        select
        local.set 7
        local.get 1
        local.get 5
        i32.add
        local.set 8
        br 1 (;@1;)
      end
      local.get 5
      i32.const 1
      i32.add
      local.set 8
      local.get 0
      i32.load
      local.set 6
      i32.const 45
      local.set 7
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 9
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.set 10
        local.get 2
        local.set 1
        loop  ;; label = @3
          local.get 9
          local.get 1
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set 9
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      local.get 8
      local.get 3
      i32.add
      local.get 9
      i32.sub
      local.set 8
    end
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=8
                                i32.const 1
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 12
                                i32.add
                                i32.load
                                local.tee 9
                                local.get 8
                                i32.le_u
                                br_if 1 (;@13;)
                                local.get 6
                                i32.const 8
                                i32.and
                                br_if 2 (;@12;)
                                local.get 9
                                local.get 8
                                i32.sub
                                local.set 1
                                i32.const 1
                                local.get 0
                                i32.load8_u offset=48
                                local.tee 9
                                local.get 9
                                i32.const 3
                                i32.eq
                                select
                                local.tee 9
                                i32.const 3
                                i32.and
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 9
                                i32.const 2
                                i32.eq
                                br_if 4 (;@10;)
                                i32.const 0
                                local.set 11
                                local.get 1
                                local.set 9
                                br 5 (;@9;)
                              end
                              local.get 0
                              local.get 7
                              local.get 2
                              local.get 3
                              call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hc306af5236927849E
                              br_if 12 (;@1;)
                              local.get 0
                              i32.load offset=24
                              local.get 4
                              local.get 5
                              local.get 0
                              i32.const 28
                              i32.add
                              i32.load
                              i32.load offset=12
                              call_indirect (type 1)
                              return
                            end
                            local.get 0
                            local.get 7
                            local.get 2
                            local.get 3
                            call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hc306af5236927849E
                            br_if 11 (;@1;)
                            local.get 0
                            i32.load offset=24
                            local.get 4
                            local.get 5
                            local.get 0
                            i32.const 28
                            i32.add
                            i32.load
                            i32.load offset=12
                            call_indirect (type 1)
                            return
                          end
                          i32.const 1
                          local.set 1
                          local.get 0
                          i32.const 1
                          i32.store8 offset=48
                          local.get 0
                          i32.const 48
                          i32.store offset=4
                          local.get 0
                          local.get 7
                          local.get 2
                          local.get 3
                          call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hc306af5236927849E
                          br_if 10 (;@1;)
                          local.get 9
                          local.get 8
                          i32.sub
                          local.set 1
                          i32.const 1
                          local.get 0
                          i32.const 48
                          i32.add
                          i32.load8_u
                          local.tee 9
                          local.get 9
                          i32.const 3
                          i32.eq
                          select
                          local.tee 9
                          i32.const 3
                          i32.and
                          i32.eqz
                          br_if 3 (;@8;)
                          local.get 9
                          i32.const 2
                          i32.eq
                          br_if 4 (;@7;)
                          i32.const 0
                          local.set 8
                          local.get 1
                          local.set 9
                          br 5 (;@6;)
                        end
                        i32.const 0
                        local.set 9
                        local.get 1
                        local.set 11
                        br 1 (;@9;)
                      end
                      local.get 1
                      i32.const 1
                      i32.shr_u
                      local.set 9
                      local.get 1
                      i32.const 1
                      i32.add
                      i32.const 1
                      i32.shr_u
                      local.set 11
                    end
                    i32.const -1
                    local.set 1
                    local.get 0
                    i32.const 4
                    i32.add
                    local.set 10
                    local.get 0
                    i32.const 24
                    i32.add
                    local.set 8
                    local.get 0
                    i32.const 28
                    i32.add
                    local.set 6
                    block  ;; label = @9
                      loop  ;; label = @10
                        local.get 1
                        i32.const 1
                        i32.add
                        local.tee 1
                        local.get 9
                        i32.ge_u
                        br_if 1 (;@9;)
                        local.get 8
                        i32.load
                        local.get 10
                        i32.load
                        local.get 6
                        i32.load
                        i32.load offset=16
                        call_indirect (type 2)
                        i32.eqz
                        br_if 0 (;@10;)
                        br 5 (;@5;)
                      end
                    end
                    local.get 0
                    i32.const 4
                    i32.add
                    i32.load
                    local.set 10
                    i32.const 1
                    local.set 1
                    local.get 0
                    local.get 7
                    local.get 2
                    local.get 3
                    call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hc306af5236927849E
                    br_if 7 (;@1;)
                    local.get 0
                    i32.const 24
                    i32.add
                    local.tee 9
                    i32.load
                    local.get 4
                    local.get 5
                    local.get 0
                    i32.const 28
                    i32.add
                    local.tee 3
                    i32.load
                    i32.load offset=12
                    call_indirect (type 1)
                    br_if 7 (;@1;)
                    local.get 9
                    i32.load
                    local.set 0
                    i32.const -1
                    local.set 9
                    local.get 3
                    i32.load
                    i32.const 16
                    i32.add
                    local.set 3
                    loop  ;; label = @9
                      local.get 9
                      i32.const 1
                      i32.add
                      local.tee 9
                      local.get 11
                      i32.ge_u
                      br_if 6 (;@3;)
                      i32.const 1
                      local.set 1
                      local.get 0
                      local.get 10
                      local.get 3
                      i32.load
                      call_indirect (type 2)
                      i32.eqz
                      br_if 0 (;@9;)
                      br 8 (;@1;)
                    end
                  end
                  i32.const 0
                  local.set 9
                  local.get 1
                  local.set 8
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 1
                i32.shr_u
                local.set 9
                local.get 1
                i32.const 1
                i32.add
                i32.const 1
                i32.shr_u
                local.set 8
              end
              i32.const -1
              local.set 1
              local.get 0
              i32.const 4
              i32.add
              local.set 10
              local.get 0
              i32.const 24
              i32.add
              local.set 3
              local.get 0
              i32.const 28
              i32.add
              local.set 2
              loop  ;; label = @6
                local.get 1
                i32.const 1
                i32.add
                local.tee 1
                local.get 9
                i32.ge_u
                br_if 2 (;@4;)
                local.get 3
                i32.load
                local.get 10
                i32.load
                local.get 2
                i32.load
                i32.load offset=16
                call_indirect (type 2)
                i32.eqz
                br_if 0 (;@6;)
              end
            end
            i32.const 1
            local.set 1
            br 3 (;@1;)
          end
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.set 10
          i32.const 1
          local.set 1
          local.get 0
          i32.const 24
          i32.add
          local.tee 9
          i32.load
          local.get 4
          local.get 5
          local.get 0
          i32.const 28
          i32.add
          local.tee 3
          i32.load
          i32.load offset=12
          call_indirect (type 1)
          br_if 2 (;@1;)
          local.get 9
          i32.load
          local.set 0
          i32.const -1
          local.set 9
          local.get 3
          i32.load
          i32.const 16
          i32.add
          local.set 3
          loop  ;; label = @4
            local.get 9
            i32.const 1
            i32.add
            local.tee 9
            local.get 8
            i32.ge_u
            br_if 2 (;@2;)
            i32.const 1
            local.set 1
            local.get 0
            local.get 10
            local.get 3
            i32.load
            call_indirect (type 2)
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        i32.const 0
        return
      end
      i32.const 0
      return
    end
    local.get 1)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hc306af5236927849E (type 6) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 1114112
          i32.eq
          br_if 0 (;@3;)
          i32.const 1
          local.set 4
          local.get 0
          i32.load offset=24
          local.get 1
          local.get 0
          i32.const 28
          i32.add
          i32.load
          i32.load offset=16
          call_indirect (type 2)
          br_if 1 (;@2;)
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 2
        local.get 3
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        local.set 4
      end
      local.get 4
      return
    end
    i32.const 0)
  (func $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc4a26b93d9a32a9fE (type 1) (param i32 i32 i32) (result i32)
    local.get 2
    local.get 0
    local.get 1
    call $_ZN4core3fmt9Formatter3pad17h7f16e71e3af941cdE)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h687ca11c899023e5E (type 2) (param i32 i32) (result i32)
    local.get 1
    i32.const 1049350
    i32.const 2
    call $_ZN4core3fmt9Formatter3pad17h7f16e71e3af941cdE)
  (func $_ZN59_$LT$core..alloc..LayoutErr$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb42fa8894f1a8ecE (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=24
    i32.const 1052240
    i32.const 9
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 1)
    local.set 3
    local.get 2
    i32.const 0
    i32.store8 offset=5
    local.get 2
    local.get 3
    i32.store8 offset=4
    local.get 2
    local.get 1
    i32.store
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    i32.const 1052249
    i32.const 7
    local.get 2
    i32.const 12
    i32.add
    i32.const 1054408
    call $_ZN4core3fmt8builders11DebugStruct5field17hf0b14c44800e8a4cE
    drop
    local.get 2
    i32.load8_u offset=4
    local.set 1
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=5
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 255
      i32.and
      local.set 0
      i32.const 1
      local.set 1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.tee 1
        i32.load offset=24
        i32.const 1049323
        i32.const 1049325
        local.get 1
        i32.load
        i32.const 4
        i32.and
        select
        i32.const 2
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 1)
        local.set 1
      end
      local.get 2
      local.get 1
      i32.store8 offset=4
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $memcpy (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memcmp (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        loop  ;; label = @3
          local.get 0
          local.get 3
          i32.add
          i32.load8_u
          local.tee 4
          local.get 1
          local.get 3
          i32.add
          i32.load8_u
          local.tee 5
          i32.ne
          br_if 2 (;@1;)
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
        end
        i32.const 0
        return
      end
      i32.const 0
      return
    end
    local.get 4
    local.get 5
    i32.sub)
  (table (;0;) 32 32 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1054904))
  (global (;2;) i32 (i32.const 1054904))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "sm_alloc" (func $sm_alloc))
  (elem (;0;) (i32.const 1) $_ZN59_$LT$core..alloc..LayoutErr$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb42fa8894f1a8ecE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h910ad67389bca4d8E $_ZN3std5alloc24default_alloc_error_hook17hab6f4c336f53ec69E $_ZN76_$LT$std..sys_common..thread_local..Key$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7a0025388351677E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2d5b1ed2c8a846ceE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hc1f8f1c175ef9aceE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hdcc15e6a72bba03dE $_ZN4core3ptr18real_drop_in_place17h19b3d105b11ade91E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h15cd4d9aaa204d04E $_ZN4core3ptr18real_drop_in_place17h9e77c4a573ca6872E $_ZN103_$LT$std..panicking..continue_panic_fmt..PanicPayload$LT$$u27$a$GT$$u20$as$u20$core..panic..BoxMeUp$GT$9box_me_up17h3b8dd5cbc181c2d7E $_ZN103_$LT$std..panicking..continue_panic_fmt..PanicPayload$LT$$u27$a$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17h20a7c76950e07ff7E $_ZN4core3ptr18real_drop_in_place17h7a4ed38861e1e278E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h7fe5d99e30b106b6E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h24e30c6ee474ecc7E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he92dec6b09d596aeE $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1e216c1ff342c2b9E $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb0550629f5ffdd6E $_ZN4core3fmt10ArgumentV110show_usize17h2c82148de7e8ffe5E $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hd40a9796954c8702E $_ZN4core3ptr18real_drop_in_place17h4da4af2e6d46b4d6E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h0013264383c6afa3E $_ZN4core3ptr18real_drop_in_place17h1609f1d9ad4d5cddE $_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h5ecab90504b77e0cE $_ZN4core3fmt5Write10write_char17h7a414e06ff1425d8E $_ZN4core3fmt5Write9write_fmt17h8adc816c7878656aE $_ZN4core3ptr18real_drop_in_place17h02a7b26e9a0e12f0E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h66caff58f3d618a4E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd95c787aac3194dbE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h7bcc927f30e22740E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h687ca11c899023e5E)
  (data (;0;) (i32.const 1048576) ": src/libcore/result.rscalled `Result::unwrap()` on an `Err` value\00\00called `Option::unwrap()` on a `None` valuesrc/libcore/option.rssrc/liballoc/raw_vec.rscapacity overflow`..index out of bounds: the len is  but the index is called `Option::unwrap()` on a `None` valuesrc/libcore/option.rs: src/libcore/slice/mod.rsindex  out of range for slice of length slice index starts at  but ends at src/libcore/str/mod.rs[...]byte index  is out of bounds of `begin <= end ( <= ) when slicing ` is not a char boundary; it is inside  (bytes ) of `0x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899    , {\0a \0a} }\00src/libcore/fmt/mod.rs()\00\00\00\00\00\00\00\00src/libcore/unicode/bool_trie.rs\00\01\03\05\05\06\06\03\07\06\08\08\09\11\0a\1c\0b\19\0c\14\0d\12\0e\16\0f\04\10\03\12\12\13\09\16\01\17\05\18\02\19\03\1a\07\1c\02\1d\01\1f\16 \03+\06,\02-\0b.\010\031\022\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\04\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\1d\dd\0e\0fKL\fb\fc./?\5c]_\b5\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11)EIWde\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\04\0d\11EIde\80\81\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\86\89\8b\8c\98\a0\a4\a6\a8\a9\ac\ba\be\bf\c5\c7\ce\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80\0dmq\de\df\0e\0f\1fno\1c\1d_}~\ae\af\bb\bc\fa\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96\97\c9\ff/_&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\980\8f\1f\ff\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91\fe\ffSgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab5\1e\15\80\e0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\08\02\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05:\03\11\07\06\05\10\08V\07\02\07\15\0dP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%\0d\06L m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\15\0b\17\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06\1fAL\04-\03t\08<\03\0f\03<\078\08*\06\82\ff\11\18\08/\11-\03 \10!\0f\80\8c\04\82\97\19\0b\15\88\94\05/\05;\07\02\0e\18\09\80\af1t\0c\80\d6\1a\0c\05\80\ff\05\80\b6\05$\0c\9b\c6\0a\d20\10\84\8d\037\09\81\5c\14\80\b8\08\80\ba=5\04\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09F\0a\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a5\11\81m\10x(*\06L\04\80\8d\04\80\be\03\1b\03\0f\0d\00\06\01\01\03\01\04\02\08\08\09\02\0a\05\0b\02\10\01\11\04\12\05\13\11\14\02\15\02\17\02\1a\02\1c\05\1d\08$\01j\03k\02\bc\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e8\02\ee \f0\04\f9\04\0c';>NO\8f\9e\9e\9f\06\07\096=>V\f3\d0\d1\04\14\1867VW\bd5\ce\cf\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOdeZ\5c\b6\b7\1b\1c\84\85\097\90\91\a8\07\0a;>fi\8f\92o_\ee\efZb\9a\9b'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0?qr{^\22{\05\03\04-\03e\04\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0b\01\80\90\817\09\16\0a\08\80\989\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\81&\1f\80\81(\08*\80\a6N\04\1e\0fC\0e\19\07\0a\06G\09'\09u\0b?A*\06;\05\0a\06Q\06\01\05\10\03\05\80\8b_!H\08\0a\80\a6^\22E\0b\0a\06\0d\138\08\0a6,\04\10\80\c0<dS\0c\01\81\00H\08S\1d9\81\07F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\81\07\83\9afu\0b\80\c4\8a\bc\84/\8f\d1\82G\a1\b9\829\07*\04\02`&\0aF\0a(\05\13\82\b0[eE\0b/\10\11@\02\1e\97\f2\0e\82\f3\a5\0d\81\1fQ\81\8c\89\04k\05\0d\03\09\07\10\93`\80\f6\0as\08n\17F\80\9a\14\0cW\09\19\80\87\81G\03\85B\0f\15\85P+\87\d5\80\d7)K\05\0a\04\02\83\11D\81K<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\0d\03\5c\04=9\1d\0d,\04\09\07\02\0e\06\80\9a\83\d5\0b\0d\03\0a\06t\0cY'\0c\048\08\0a\06(\08\1eR\0c\04g\03)\0d\0a\06\03\0d0`\0e\85\92\00\00\c0\fb\ef>\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f8\ff\fb\ff\ff\ff\07\00\00\00\00\00\00\14\fe!\fe\00\0c\00\00\00\02\00\00\00\00\00\00P\1e \80\00\0c\00\00@\06\00\00\00\00\00\00\10\869\02\00\00\00#\00\be!\00\00\0c\00\00\fc\02\00\00\00\00\00\00\d0\1e \c0\00\0c\00\00\00\04\00\00\00\00\00\00@\01 \80\00\00\00\00\00\11\00\00\00\00\00\00\c0\c1=`\00\0c\00\00\00\02\00\00\00\00\00\00\90D0`\00\0c\00\00\00\03\00\00\00\00\00\00X\1e \80\00\0c\00\00\00\00\84\5c\80\00\00\00\00\00\00\00\00\00\00\f2\07\80\7f\00\00\00\00\00\00\00\00\00\00\00\00\f2\1b\00?\00\00\00\00\00\00\00\00\00\03\00\00\a0\02\00\00\00\00\00\00\fe\7f\df\e0\ff\fe\ff\ff\ff\1f@\00\00\00\00\00\00\00\00\00\00\00\00\e0\fdf\00\00\00\c3\01\00\1e\00d \00 \00\00\00\00\00\00\00\e0\00\00\00\00\00\00\1c\00\00\00\1c\00\00\00\0c\00\00\00\0c\00\00\00\00\00\00\00\b0?@\fe\0f \00\00\00\00\008\00\00\00\00\00\00`\00\00\00\00\02\00\00\00\00\00\00\87\01\04\0e\00\00\80\09\00\00\00\00\00\00@\7f\e5\1f\f8\9f\00\00\00\00\00\00\ff\7f\0f\00\00\00\00\00\d0\17\04\00\00\00\00\f8\0f\00\03\00\00\00<;\00\00\00\00\00\00@\a3\03\00\00\00\00\00\00\f0\cf\00\00\00\f7\ff\fd!\10\03\ff\ff\ff\ff\ff\ff\ff\fb\00\10\00\00\00\00\00\00\00\00\ff\ff\ff\ff\01\00\00\00\00\00\00\80\03\00\00\00\00\00\00\00\00\80\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\fc\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\80\f7?\00\00\00\c0\00\00\00\00\00\00\00\00\00\00\03\00D\08\00\00`\00\00\000\00\00\00\ff\ff\03\80\00\00\00\00\c0?\00\00\80\ff\03\00\00\00\00\00\07\00\00\00\00\00\c8\13\00\00\00\00 \00\00\00\00\00\00\00\00~f\00\08\10\00\00\00\00\00\10\00\00\00\00\00\00\9d\c1\02\00\00\00\000@\00\00\00\00\00 !\00\00\00\00\00@\00\00\00\00\ff\ff\00\00\ff\ff\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\05\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\07\00\00\08\09\0a\00\0b\0c\0d\0e\0f\00\00\10\11\12\00\00\13\14\15\16\00\00\17\18\19\1a\1b\00\1c\00\00\00\1d\00\00\00\00\00\00\00\1e\1f \00\00\00\00\00!\00\22\00#$%\00\00\00\00&\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00'(\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00+,\00\00-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00./0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\002\003\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0045\00\005556\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\01\00\00\00\00\00\00\00\00\00\c0\07n\f0\00\00\00\00\00\87\00\00\00\00`\00\00\00\00\00\00\00\f0\00\00\00\c0\ff\01\00\00\00\00\00\02\00\00\00\00\00\00\ff\7f\00\00\00\00\00\00\80\03\00\00\00\00\00x\06\07\00\00\00\80\ef\1f\00\00\00\00\00\00\00\08\00\03\00\00\00\00\00\c0\7f\00\1e\00\00\00\00\00\00\00\00\00\00\00\80\d3@\00\00\00\80\f8\07\00\00\03\00\00\00\00\00\00X\01\00\80\00\c0\1f\1f\00\00\00\00\00\00\00\00\ff\5c\00\00@\00\00\00\00\00\00\00\00\00\00\f9\a5\0d\00\00\00\00\00\00\00\00\00\00\00\00\80<\b0\01\00\000\00\00\00\00\00\00\00\00\00\00\f8\a7\01\00\00\00\00\00\00\00\00\00\00\00\00(\bf\00\00\00\00\e0\bc\0f\00\00\00\00\00\00\00\80\ff\06\fe\07\00\00\00\00\f8y\80\00~\0e\00\00\00\00\00\fc\7f\03\00\00\00\00\00\00\00\00\00\00\7f\bf\00\00\fc\ff\ff\fcm\00\00\00\00\00\00\00~\b4\bf\00\00\00\00\00\00\00\00\00\a3\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\1f\00\00\00\00\00\00\00\7f\00\00\80\07\00\00\00\00\00\00\00\00`\00\00\00\00\00\00\00\00\a0\c3\07\f8\e7\0f\00\00\00<\00\00\1c\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\7f\f8\ff\ff\ff\ff\ff\1f \00\10\00\00\f8\fe\ff\00\00\7f\ff\ff\f9\db\07\00\00\00\00\7f\00\00\00\00\00\f0\07\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00LayoutErrprivate")
  (data (;1;) (i32.const 1052256) "\00\00\10\00\00\00\00\00\00\00\10\00\02\00\00\00\02\00\10\00\15\00\00\00\e5\03\00\00\05\00\00\00D\00\10\00+\00\00\00o\00\10\00\15\00\00\00Y\01\00\00\15\00\00\00\04\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\00\00\00\00\01\00\00\00\09\00\00\00\0a\00\00\00\10\00\00\00\04\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\0c\00\00\00\04\00\00\00\0e\00\00\00\9b\00\10\00\11\00\00\00\84\00\10\00\17\00\00\00\ea\02\00\00\05\00\00\00\ac\00\10\00\00\00\00\00\ad\00\10\00\02\00\00\00\15\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00\af\00\10\00 \00\00\00\cf\00\10\00\12\00\00\00\e1\00\10\00+\00\00\00\0c\01\10\00\15\00\00\00Y\01\00\00\15\00\00\00;\01\10\00\06\00\00\00A\01\10\00\22\00\00\00#\01\10\00\18\00\00\00m\09\00\00\05\00\00\00c\01\10\00\16\00\00\00y\01\10\00\0d\00\00\00#\01\10\00\18\00\00\00s\09\00\00\05\00\00\00\a1\01\10\00\0b\00\00\00\ac\01\10\00\16\00\00\00\ac\00\10\00\01\00\00\00\86\01\10\00\16\00\00\00\da\07\00\00\09\00\00\00\c2\01\10\00\0e\00\00\00\d0\01\10\00\04\00\00\00\d4\01\10\00\10\00\00\00\ac\00\10\00\01\00\00\00\86\01\10\00\16\00\00\00\de\07\00\00\05\00\00\00\a1\01\10\00\0b\00\00\00\e4\01\10\00&\00\00\00\0a\02\10\00\08\00\00\00\12\02\10\00\06\00\00\00\ac\00\10\00\01\00\00\00\86\01\10\00\16\00\00\00\eb\07\00\00\05\00\00\00\17\00\00\00\0c\00\00\00\04\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\ac\00\10\00\00\00\00\00\ea\02\10\00\01\00\00\00!\01\10\00\02\00\00\00\1b\00\00\00\04\00\00\00\04\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00\f0\02\10\00\16\00\00\00H\04\00\00(\00\00\00\f0\02\10\00\16\00\00\00T\04\00\00\11\00\00\00\10\03\10\00 \00\00\00'\00\00\00\19\00\00\00\10\03\10\00 \00\00\00(\00\00\00 \00\00\00\10\03\10\00 \00\00\00*\00\00\00\19\00\00\00\10\03\10\00 \00\00\00+\00\00\00\18\00\00\00\10\03\10\00 \00\00\00,\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f8\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\fe\ff\ff\ff\ff\bf\b6\00\00\00\00\00\00\00\00\00\ff\07\00\00\00\00\00\f8\ff\ff\00\00\01\00\00\00\00\00\00\00\00\00\00\00\c0\9f\9f=\00\00\00\00\02\00\00\00\ff\ff\ff\07\00\00\00\00\00\00\00\00\00\00\c0\ff\01\00\00\00\00\00\00\f8\0f H\08\10\00J\00\00\00\98\0a\10\00\00\02\00\00\98\0c\10\007\00\00\00\00\01\02\03\04\05\06\07\08\09\08\0a\0b\0c\0d\0e\0f\10\11\12\13\14\02\15\16\17\18\19\1a\1b\1c\1d\1e\1f \02\02\02\02\02\02\02\02\02\02!\02\02\02\02\02\02\02\02\02\02\02\02\02\02\22#$%&\02'\02(\02\02\02)*+\02,-./0\02\021\02\02\022\02\02\02\02\02\02\02\023\02\024\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\025\026\027\02\02\02\02\02\02\02\028\029\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02:;<\02\02\02\02=\02\02>?@ABCDEF\02\02\02G\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02H\02\02\02\02\02\02\02\02\02\02\02I\02\02\02\02\02;\02\00\01\02\02\02\02\03\02\02\02\02\04\02\05\06\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\07\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\1b\00\00\00\04\00\00\00\04\00\00\00\1f\00\00\00")
  (data (;2;) (i32.const 1054424) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
