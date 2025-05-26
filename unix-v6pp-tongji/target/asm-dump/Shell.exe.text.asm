
target/objs/Shell.exe:     file format pei-i386


Disassembly of section .text:

00401000 <double_getSign>:
  401000:	55                   	push   %ebp
  401001:	89 e5                	mov    %esp,%ebp
  401003:	83 ec 18             	sub    $0x18,%esp
  401006:	8b 45 08             	mov    0x8(%ebp),%eax
  401009:	89 45 e8             	mov    %eax,-0x18(%ebp)
  40100c:	8b 45 0c             	mov    0xc(%ebp),%eax
  40100f:	89 45 ec             	mov    %eax,-0x14(%ebp)
  401012:	8d 45 e8             	lea    -0x18(%ebp),%eax
  401015:	89 45 fc             	mov    %eax,-0x4(%ebp)
  401018:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40101b:	83 c0 07             	add    $0x7,%eax
  40101e:	0f b6 00             	movzbl (%eax),%eax
  401021:	c0 e8 07             	shr    $0x7,%al
  401024:	0f b6 c0             	movzbl %al,%eax
  401027:	c9                   	leave
  401028:	c3                   	ret

00401029 <double_getMantissa>:
  401029:	55                   	push   %ebp
  40102a:	89 e5                	mov    %esp,%ebp
  40102c:	83 ec 18             	sub    $0x18,%esp
  40102f:	8b 45 0c             	mov    0xc(%ebp),%eax
  401032:	89 45 e8             	mov    %eax,-0x18(%ebp)
  401035:	8b 45 10             	mov    0x10(%ebp),%eax
  401038:	89 45 ec             	mov    %eax,-0x14(%ebp)
  40103b:	8d 45 e8             	lea    -0x18(%ebp),%eax
  40103e:	89 45 fc             	mov    %eax,-0x4(%ebp)
  401041:	8b 45 fc             	mov    -0x4(%ebp),%eax
  401044:	8b 40 04             	mov    0x4(%eax),%eax
  401047:	25 ff ff 0f 00       	and    $0xfffff,%eax
  40104c:	89 c2                	mov    %eax,%edx
  40104e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  401051:	89 50 04             	mov    %edx,0x4(%eax)
  401054:	8b 4d 08             	mov    0x8(%ebp),%ecx
  401057:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40105a:	8b 50 04             	mov    0x4(%eax),%edx
  40105d:	8b 00                	mov    (%eax),%eax
  40105f:	89 01                	mov    %eax,(%ecx)
  401061:	89 51 04             	mov    %edx,0x4(%ecx)
  401064:	8b 45 08             	mov    0x8(%ebp),%eax
  401067:	c9                   	leave
  401068:	c2 04 00             	ret    $0x4

0040106b <double_getExponent>:
  40106b:	55                   	push   %ebp
  40106c:	89 e5                	mov    %esp,%ebp
  40106e:	83 ec 18             	sub    $0x18,%esp
  401071:	8b 45 08             	mov    0x8(%ebp),%eax
  401074:	89 45 e8             	mov    %eax,-0x18(%ebp)
  401077:	8b 45 0c             	mov    0xc(%ebp),%eax
  40107a:	89 45 ec             	mov    %eax,-0x14(%ebp)
  40107d:	8d 45 e8             	lea    -0x18(%ebp),%eax
  401080:	89 45 fc             	mov    %eax,-0x4(%ebp)
  401083:	8b 45 fc             	mov    -0x4(%ebp),%eax
  401086:	83 c0 04             	add    $0x4,%eax
  401089:	8b 00                	mov    (%eax),%eax
  40108b:	c1 f8 14             	sar    $0x14,%eax
  40108e:	25 ff 07 00 00       	and    $0x7ff,%eax
  401093:	89 45 f8             	mov    %eax,-0x8(%ebp)
  401096:	81 6d f8 ff 03 00 00 	subl   $0x3ff,-0x8(%ebp)
  40109d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4010a0:	c9                   	leave
  4010a1:	c3                   	ret

004010a2 <double_getLeft>:
  4010a2:	55                   	push   %ebp
  4010a3:	89 e5                	mov    %esp,%ebp
  4010a5:	83 ec 28             	sub    $0x28,%esp
  4010a8:	8b 45 08             	mov    0x8(%ebp),%eax
  4010ab:	89 45 d8             	mov    %eax,-0x28(%ebp)
  4010ae:	8b 45 0c             	mov    0xc(%ebp),%eax
  4010b1:	89 45 dc             	mov    %eax,-0x24(%ebp)
  4010b4:	dd 45 d8             	fldl   -0x28(%ebp)
  4010b7:	8d 64 24 f8          	lea    -0x8(%esp),%esp
  4010bb:	dd 1c 24             	fstpl  (%esp)
  4010be:	e8 a8 ff ff ff       	call   40106b <double_getExponent>
  4010c3:	83 c4 08             	add    $0x8,%esp
  4010c6:	89 45 f0             	mov    %eax,-0x10(%ebp)
  4010c9:	8d 45 d8             	lea    -0x28(%ebp),%eax
  4010cc:	89 45 ec             	mov    %eax,-0x14(%ebp)
  4010cf:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
  4010d6:	b8 34 00 00 00       	mov    $0x34,%eax
  4010db:	2b 45 f0             	sub    -0x10(%ebp),%eax
  4010de:	89 45 e8             	mov    %eax,-0x18(%ebp)
  4010e1:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%ebp)
  4010e8:	c7 45 e4 20 00 00 00 	movl   $0x20,-0x1c(%ebp)
  4010ef:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  4010f6:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  4010fa:	79 07                	jns    401103 <double_getLeft+0x61>
  4010fc:	d9 ee                	fldz
  4010fe:	e9 91 00 00 00       	jmp    401194 <double_getLeft+0xf2>
  401103:	83 7d f0 34          	cmpl   $0x34,-0x10(%ebp)
  401107:	7e 08                	jle    401111 <double_getLeft+0x6f>
  401109:	dd 45 d8             	fldl   -0x28(%ebp)
  40110c:	e9 83 00 00 00       	jmp    401194 <double_getLeft+0xf2>
  401111:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  401118:	eb 0d                	jmp    401127 <double_getLeft+0x85>
  40111a:	8b 45 f8             	mov    -0x8(%ebp),%eax
  40111d:	29 45 fc             	sub    %eax,-0x4(%ebp)
  401120:	d1 65 f8             	shll   $1,-0x8(%ebp)
  401123:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  401127:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40112a:	3b 45 e8             	cmp    -0x18(%ebp),%eax
  40112d:	7d 08                	jge    401137 <double_getLeft+0x95>
  40112f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401132:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
  401135:	7c e3                	jl     40111a <double_getLeft+0x78>
  401137:	8b 45 ec             	mov    -0x14(%ebp),%eax
  40113a:	8b 00                	mov    (%eax),%eax
  40113c:	23 45 fc             	and    -0x4(%ebp),%eax
  40113f:	89 c2                	mov    %eax,%edx
  401141:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401144:	89 10                	mov    %edx,(%eax)
  401146:	8b 45 e8             	mov    -0x18(%ebp),%eax
  401149:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
  40114c:	7e 43                	jle    401191 <double_getLeft+0xef>
  40114e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  401151:	29 45 e8             	sub    %eax,-0x18(%ebp)
  401154:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
  40115b:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%ebp)
  401162:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  401169:	eb 0d                	jmp    401178 <double_getLeft+0xd6>
  40116b:	8b 45 f8             	mov    -0x8(%ebp),%eax
  40116e:	29 45 fc             	sub    %eax,-0x4(%ebp)
  401171:	d1 65 f8             	shll   $1,-0x8(%ebp)
  401174:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  401178:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40117b:	3b 45 e8             	cmp    -0x18(%ebp),%eax
  40117e:	7c eb                	jl     40116b <double_getLeft+0xc9>
  401180:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401183:	8b 40 04             	mov    0x4(%eax),%eax
  401186:	23 45 fc             	and    -0x4(%ebp),%eax
  401189:	89 c2                	mov    %eax,%edx
  40118b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  40118e:	89 50 04             	mov    %edx,0x4(%eax)
  401191:	dd 45 d8             	fldl   -0x28(%ebp)
  401194:	c9                   	leave
  401195:	c3                   	ret

00401196 <double_getRight>:
  401196:	55                   	push   %ebp
  401197:	89 e5                	mov    %esp,%ebp
  401199:	83 ec 18             	sub    $0x18,%esp
  40119c:	8b 45 08             	mov    0x8(%ebp),%eax
  40119f:	89 45 e8             	mov    %eax,-0x18(%ebp)
  4011a2:	8b 45 0c             	mov    0xc(%ebp),%eax
  4011a5:	89 45 ec             	mov    %eax,-0x14(%ebp)
  4011a8:	ff 75 ec             	push   -0x14(%ebp)
  4011ab:	ff 75 e8             	push   -0x18(%ebp)
  4011ae:	e8 ef fe ff ff       	call   4010a2 <double_getLeft>
  4011b3:	83 c4 08             	add    $0x8,%esp
  4011b6:	dd 5d f8             	fstpl  -0x8(%ebp)
  4011b9:	dd 45 e8             	fldl   -0x18(%ebp)
  4011bc:	dc 65 f8             	fsubl  -0x8(%ebp)
  4011bf:	c9                   	leave
  4011c0:	c3                   	ret

004011c1 <double_isZero>:
  4011c1:	55                   	push   %ebp
  4011c2:	89 e5                	mov    %esp,%ebp
  4011c4:	83 ec 18             	sub    $0x18,%esp
  4011c7:	8b 45 08             	mov    0x8(%ebp),%eax
  4011ca:	89 45 e8             	mov    %eax,-0x18(%ebp)
  4011cd:	8b 45 0c             	mov    0xc(%ebp),%eax
  4011d0:	89 45 ec             	mov    %eax,-0x14(%ebp)
  4011d3:	8d 45 f8             	lea    -0x8(%ebp),%eax
  4011d6:	83 ec 04             	sub    $0x4,%esp
  4011d9:	ff 75 ec             	push   -0x14(%ebp)
  4011dc:	ff 75 e8             	push   -0x18(%ebp)
  4011df:	50                   	push   %eax
  4011e0:	e8 44 fe ff ff       	call   401029 <double_getMantissa>
  4011e5:	83 c4 0c             	add    $0xc,%esp
  4011e8:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4011eb:	85 c0                	test   %eax,%eax
  4011ed:	75 0e                	jne    4011fd <double_isZero+0x3c>
  4011ef:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4011f2:	85 c0                	test   %eax,%eax
  4011f4:	75 07                	jne    4011fd <double_isZero+0x3c>
  4011f6:	b8 01 00 00 00       	mov    $0x1,%eax
  4011fb:	eb 05                	jmp    401202 <double_isZero+0x41>
  4011fd:	b8 00 00 00 00       	mov    $0x0,%eax
  401202:	c9                   	leave
  401203:	c3                   	ret

00401204 <double_isUpOverFlow>:
  401204:	55                   	push   %ebp
  401205:	89 e5                	mov    %esp,%ebp
  401207:	83 ec 08             	sub    $0x8,%esp
  40120a:	8b 45 08             	mov    0x8(%ebp),%eax
  40120d:	89 45 f8             	mov    %eax,-0x8(%ebp)
  401210:	8b 45 0c             	mov    0xc(%ebp),%eax
  401213:	89 45 fc             	mov    %eax,-0x4(%ebp)
  401216:	ff 75 fc             	push   -0x4(%ebp)
  401219:	ff 75 f8             	push   -0x8(%ebp)
  40121c:	e8 4a fe ff ff       	call   40106b <double_getExponent>
  401221:	83 c4 08             	add    $0x8,%esp
  401224:	3d 00 04 00 00       	cmp    $0x400,%eax
  401229:	0f 94 c0             	sete   %al
  40122c:	0f b6 c0             	movzbl %al,%eax
  40122f:	c9                   	leave
  401230:	c3                   	ret

00401231 <double_isDownOverFlow>:
  401231:	55                   	push   %ebp
  401232:	89 e5                	mov    %esp,%ebp
  401234:	83 ec 18             	sub    $0x18,%esp
  401237:	8b 45 08             	mov    0x8(%ebp),%eax
  40123a:	89 45 e8             	mov    %eax,-0x18(%ebp)
  40123d:	8b 45 0c             	mov    0xc(%ebp),%eax
  401240:	89 45 ec             	mov    %eax,-0x14(%ebp)
  401243:	8d 45 f8             	lea    -0x8(%ebp),%eax
  401246:	83 ec 04             	sub    $0x4,%esp
  401249:	ff 75 ec             	push   -0x14(%ebp)
  40124c:	ff 75 e8             	push   -0x18(%ebp)
  40124f:	50                   	push   %eax
  401250:	e8 d4 fd ff ff       	call   401029 <double_getMantissa>
  401255:	83 c4 0c             	add    $0xc,%esp
  401258:	ff 75 ec             	push   -0x14(%ebp)
  40125b:	ff 75 e8             	push   -0x18(%ebp)
  40125e:	e8 08 fe ff ff       	call   40106b <double_getExponent>
  401263:	83 c4 08             	add    $0x8,%esp
  401266:	3d 01 fc ff ff       	cmp    $0xfffffc01,%eax
  40126b:	75 15                	jne    401282 <double_isDownOverFlow+0x51>
  40126d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  401270:	85 c0                	test   %eax,%eax
  401272:	75 0e                	jne    401282 <double_isDownOverFlow+0x51>
  401274:	8b 45 f8             	mov    -0x8(%ebp),%eax
  401277:	85 c0                	test   %eax,%eax
  401279:	75 07                	jne    401282 <double_isDownOverFlow+0x51>
  40127b:	b8 01 00 00 00       	mov    $0x1,%eax
  401280:	eb 05                	jmp    401287 <double_isDownOverFlow+0x56>
  401282:	b8 00 00 00 00       	mov    $0x0,%eax
  401287:	c9                   	leave
  401288:	c3                   	ret

00401289 <creat>:
  401289:	55                   	push   %ebp
  40128a:	89 e5                	mov    %esp,%ebp
  40128c:	53                   	push   %ebx
  40128d:	83 ec 10             	sub    $0x10,%esp
  401290:	b8 08 00 00 00       	mov    $0x8,%eax
  401295:	8b 55 08             	mov    0x8(%ebp),%edx
  401298:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  40129b:	89 d3                	mov    %edx,%ebx
  40129d:	cd 80                	int    $0x80
  40129f:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4012a2:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  4012a6:	78 05                	js     4012ad <creat+0x24>
  4012a8:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4012ab:	eb 05                	jmp    4012b2 <creat+0x29>
  4012ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4012b2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4012b5:	c9                   	leave
  4012b6:	c3                   	ret

004012b7 <open>:
  4012b7:	55                   	push   %ebp
  4012b8:	89 e5                	mov    %esp,%ebp
  4012ba:	53                   	push   %ebx
  4012bb:	83 ec 10             	sub    $0x10,%esp
  4012be:	b8 05 00 00 00       	mov    $0x5,%eax
  4012c3:	8b 55 08             	mov    0x8(%ebp),%edx
  4012c6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  4012c9:	89 d3                	mov    %edx,%ebx
  4012cb:	cd 80                	int    $0x80
  4012cd:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4012d0:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  4012d4:	78 05                	js     4012db <open+0x24>
  4012d6:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4012d9:	eb 05                	jmp    4012e0 <open+0x29>
  4012db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4012e0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4012e3:	c9                   	leave
  4012e4:	c3                   	ret

004012e5 <close>:
  4012e5:	55                   	push   %ebp
  4012e6:	89 e5                	mov    %esp,%ebp
  4012e8:	53                   	push   %ebx
  4012e9:	83 ec 10             	sub    $0x10,%esp
  4012ec:	b8 06 00 00 00       	mov    $0x6,%eax
  4012f1:	8b 55 08             	mov    0x8(%ebp),%edx
  4012f4:	89 d3                	mov    %edx,%ebx
  4012f6:	cd 80                	int    $0x80
  4012f8:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4012fb:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  4012ff:	78 05                	js     401306 <close+0x21>
  401301:	8b 45 f8             	mov    -0x8(%ebp),%eax
  401304:	eb 05                	jmp    40130b <close+0x26>
  401306:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40130b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40130e:	c9                   	leave
  40130f:	c3                   	ret

00401310 <read>:
  401310:	55                   	push   %ebp
  401311:	89 e5                	mov    %esp,%ebp
  401313:	53                   	push   %ebx
  401314:	83 ec 10             	sub    $0x10,%esp
  401317:	b8 03 00 00 00       	mov    $0x3,%eax
  40131c:	8b 5d 08             	mov    0x8(%ebp),%ebx
  40131f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  401322:	8b 55 10             	mov    0x10(%ebp),%edx
  401325:	cd 80                	int    $0x80
  401327:	89 45 f8             	mov    %eax,-0x8(%ebp)
  40132a:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  40132e:	78 05                	js     401335 <read+0x25>
  401330:	8b 45 f8             	mov    -0x8(%ebp),%eax
  401333:	eb 05                	jmp    40133a <read+0x2a>
  401335:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40133a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40133d:	c9                   	leave
  40133e:	c3                   	ret

0040133f <write>:
  40133f:	55                   	push   %ebp
  401340:	89 e5                	mov    %esp,%ebp
  401342:	53                   	push   %ebx
  401343:	83 ec 10             	sub    $0x10,%esp
  401346:	b8 04 00 00 00       	mov    $0x4,%eax
  40134b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  40134e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  401351:	8b 55 10             	mov    0x10(%ebp),%edx
  401354:	cd 80                	int    $0x80
  401356:	89 45 f8             	mov    %eax,-0x8(%ebp)
  401359:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  40135d:	78 05                	js     401364 <write+0x25>
  40135f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  401362:	eb 05                	jmp    401369 <write+0x2a>
  401364:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401369:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40136c:	c9                   	leave
  40136d:	c3                   	ret

0040136e <pipe>:
  40136e:	55                   	push   %ebp
  40136f:	89 e5                	mov    %esp,%ebp
  401371:	53                   	push   %ebx
  401372:	83 ec 10             	sub    $0x10,%esp
  401375:	b8 2a 00 00 00       	mov    $0x2a,%eax
  40137a:	8b 55 08             	mov    0x8(%ebp),%edx
  40137d:	89 d3                	mov    %edx,%ebx
  40137f:	cd 80                	int    $0x80
  401381:	89 45 f8             	mov    %eax,-0x8(%ebp)
  401384:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  401388:	78 05                	js     40138f <pipe+0x21>
  40138a:	8b 45 f8             	mov    -0x8(%ebp),%eax
  40138d:	eb 05                	jmp    401394 <pipe+0x26>
  40138f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401394:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  401397:	c9                   	leave
  401398:	c3                   	ret

00401399 <seek>:
  401399:	55                   	push   %ebp
  40139a:	89 e5                	mov    %esp,%ebp
  40139c:	53                   	push   %ebx
  40139d:	83 ec 10             	sub    $0x10,%esp
  4013a0:	b8 13 00 00 00       	mov    $0x13,%eax
  4013a5:	8b 5d 08             	mov    0x8(%ebp),%ebx
  4013a8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  4013ab:	8b 55 10             	mov    0x10(%ebp),%edx
  4013ae:	cd 80                	int    $0x80
  4013b0:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4013b3:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  4013b7:	78 05                	js     4013be <seek+0x25>
  4013b9:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4013bc:	eb 05                	jmp    4013c3 <seek+0x2a>
  4013be:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4013c3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4013c6:	c9                   	leave
  4013c7:	c3                   	ret

004013c8 <dup>:
  4013c8:	55                   	push   %ebp
  4013c9:	89 e5                	mov    %esp,%ebp
  4013cb:	53                   	push   %ebx
  4013cc:	83 ec 10             	sub    $0x10,%esp
  4013cf:	b8 29 00 00 00       	mov    $0x29,%eax
  4013d4:	8b 55 08             	mov    0x8(%ebp),%edx
  4013d7:	89 d3                	mov    %edx,%ebx
  4013d9:	cd 80                	int    $0x80
  4013db:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4013de:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  4013e2:	78 05                	js     4013e9 <dup+0x21>
  4013e4:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4013e7:	eb 05                	jmp    4013ee <dup+0x26>
  4013e9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4013ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4013f1:	c9                   	leave
  4013f2:	c3                   	ret

004013f3 <fstat>:
  4013f3:	55                   	push   %ebp
  4013f4:	89 e5                	mov    %esp,%ebp
  4013f6:	53                   	push   %ebx
  4013f7:	83 ec 10             	sub    $0x10,%esp
  4013fa:	b8 1c 00 00 00       	mov    $0x1c,%eax
  4013ff:	8b 55 08             	mov    0x8(%ebp),%edx
  401402:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  401405:	89 d3                	mov    %edx,%ebx
  401407:	cd 80                	int    $0x80
  401409:	89 45 f8             	mov    %eax,-0x8(%ebp)
  40140c:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  401410:	78 05                	js     401417 <fstat+0x24>
  401412:	8b 45 f8             	mov    -0x8(%ebp),%eax
  401415:	eb 05                	jmp    40141c <fstat+0x29>
  401417:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40141c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40141f:	c9                   	leave
  401420:	c3                   	ret

00401421 <stat>:
  401421:	55                   	push   %ebp
  401422:	89 e5                	mov    %esp,%ebp
  401424:	53                   	push   %ebx
  401425:	83 ec 10             	sub    $0x10,%esp
  401428:	b8 12 00 00 00       	mov    $0x12,%eax
  40142d:	8b 55 08             	mov    0x8(%ebp),%edx
  401430:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  401433:	89 d3                	mov    %edx,%ebx
  401435:	cd 80                	int    $0x80
  401437:	89 45 f8             	mov    %eax,-0x8(%ebp)
  40143a:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  40143e:	78 05                	js     401445 <stat+0x24>
  401440:	8b 45 f8             	mov    -0x8(%ebp),%eax
  401443:	eb 05                	jmp    40144a <stat+0x29>
  401445:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40144a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40144d:	c9                   	leave
  40144e:	c3                   	ret

0040144f <chmod>:
  40144f:	55                   	push   %ebp
  401450:	89 e5                	mov    %esp,%ebp
  401452:	53                   	push   %ebx
  401453:	83 ec 10             	sub    $0x10,%esp
  401456:	b8 0f 00 00 00       	mov    $0xf,%eax
  40145b:	8b 55 08             	mov    0x8(%ebp),%edx
  40145e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  401461:	89 d3                	mov    %edx,%ebx
  401463:	cd 80                	int    $0x80
  401465:	89 45 f8             	mov    %eax,-0x8(%ebp)
  401468:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  40146c:	78 05                	js     401473 <chmod+0x24>
  40146e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  401471:	eb 05                	jmp    401478 <chmod+0x29>
  401473:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401478:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40147b:	c9                   	leave
  40147c:	c3                   	ret

0040147d <chown>:
  40147d:	55                   	push   %ebp
  40147e:	89 e5                	mov    %esp,%ebp
  401480:	53                   	push   %ebx
  401481:	83 ec 18             	sub    $0x18,%esp
  401484:	8b 55 0c             	mov    0xc(%ebp),%edx
  401487:	8b 45 10             	mov    0x10(%ebp),%eax
  40148a:	66 89 55 e8          	mov    %dx,-0x18(%ebp)
  40148e:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  401492:	b8 10 00 00 00       	mov    $0x10,%eax
  401497:	8b 5d 08             	mov    0x8(%ebp),%ebx
  40149a:	0f b7 4d e8          	movzwl -0x18(%ebp),%ecx
  40149e:	0f b7 55 e4          	movzwl -0x1c(%ebp),%edx
  4014a2:	cd 80                	int    $0x80
  4014a4:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4014a7:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  4014ab:	78 05                	js     4014b2 <chown+0x35>
  4014ad:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4014b0:	eb 05                	jmp    4014b7 <chown+0x3a>
  4014b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4014b7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4014ba:	c9                   	leave
  4014bb:	c3                   	ret

004014bc <link>:
  4014bc:	55                   	push   %ebp
  4014bd:	89 e5                	mov    %esp,%ebp
  4014bf:	53                   	push   %ebx
  4014c0:	83 ec 10             	sub    $0x10,%esp
  4014c3:	b8 09 00 00 00       	mov    $0x9,%eax
  4014c8:	8b 55 08             	mov    0x8(%ebp),%edx
  4014cb:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  4014ce:	89 d3                	mov    %edx,%ebx
  4014d0:	cd 80                	int    $0x80
  4014d2:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4014d5:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  4014d9:	78 05                	js     4014e0 <link+0x24>
  4014db:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4014de:	eb 05                	jmp    4014e5 <link+0x29>
  4014e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4014e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4014e8:	c9                   	leave
  4014e9:	c3                   	ret

004014ea <unlink>:
  4014ea:	55                   	push   %ebp
  4014eb:	89 e5                	mov    %esp,%ebp
  4014ed:	53                   	push   %ebx
  4014ee:	83 ec 10             	sub    $0x10,%esp
  4014f1:	b8 0a 00 00 00       	mov    $0xa,%eax
  4014f6:	8b 55 08             	mov    0x8(%ebp),%edx
  4014f9:	89 d3                	mov    %edx,%ebx
  4014fb:	cd 80                	int    $0x80
  4014fd:	89 45 f8             	mov    %eax,-0x8(%ebp)
  401500:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  401504:	78 05                	js     40150b <unlink+0x21>
  401506:	8b 45 f8             	mov    -0x8(%ebp),%eax
  401509:	eb 05                	jmp    401510 <unlink+0x26>
  40150b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401510:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  401513:	c9                   	leave
  401514:	c3                   	ret

00401515 <chdir>:
  401515:	55                   	push   %ebp
  401516:	89 e5                	mov    %esp,%ebp
  401518:	53                   	push   %ebx
  401519:	83 ec 10             	sub    $0x10,%esp
  40151c:	b8 0c 00 00 00       	mov    $0xc,%eax
  401521:	8b 55 08             	mov    0x8(%ebp),%edx
  401524:	89 d3                	mov    %edx,%ebx
  401526:	cd 80                	int    $0x80
  401528:	89 45 f8             	mov    %eax,-0x8(%ebp)
  40152b:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  40152f:	78 05                	js     401536 <chdir+0x21>
  401531:	8b 45 f8             	mov    -0x8(%ebp),%eax
  401534:	eb 05                	jmp    40153b <chdir+0x26>
  401536:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40153b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40153e:	c9                   	leave
  40153f:	c3                   	ret

00401540 <mknod>:
  401540:	55                   	push   %ebp
  401541:	89 e5                	mov    %esp,%ebp
  401543:	53                   	push   %ebx
  401544:	83 ec 10             	sub    $0x10,%esp
  401547:	b8 0e 00 00 00       	mov    $0xe,%eax
  40154c:	8b 5d 08             	mov    0x8(%ebp),%ebx
  40154f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  401552:	8b 55 10             	mov    0x10(%ebp),%edx
  401555:	cd 80                	int    $0x80
  401557:	89 45 f8             	mov    %eax,-0x8(%ebp)
  40155a:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  40155e:	78 05                	js     401565 <mknod+0x25>
  401560:	8b 45 f8             	mov    -0x8(%ebp),%eax
  401563:	eb 05                	jmp    40156a <mknod+0x2a>
  401565:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40156a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40156d:	c9                   	leave
  40156e:	c3                   	ret

0040156f <float_getSign>:
  40156f:	55                   	push   %ebp
  401570:	89 e5                	mov    %esp,%ebp
  401572:	83 ec 10             	sub    $0x10,%esp
  401575:	8d 45 08             	lea    0x8(%ebp),%eax
  401578:	89 45 fc             	mov    %eax,-0x4(%ebp)
  40157b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40157e:	8b 00                	mov    (%eax),%eax
  401580:	c1 e8 1f             	shr    $0x1f,%eax
  401583:	c9                   	leave
  401584:	c3                   	ret

00401585 <float_getMantissa>:
  401585:	55                   	push   %ebp
  401586:	89 e5                	mov    %esp,%ebp
  401588:	83 ec 10             	sub    $0x10,%esp
  40158b:	8d 45 08             	lea    0x8(%ebp),%eax
  40158e:	89 45 fc             	mov    %eax,-0x4(%ebp)
  401591:	8b 45 fc             	mov    -0x4(%ebp),%eax
  401594:	8b 00                	mov    (%eax),%eax
  401596:	25 ff ff 7f 00       	and    $0x7fffff,%eax
  40159b:	c9                   	leave
  40159c:	c3                   	ret

0040159d <float_getExponent>:
  40159d:	55                   	push   %ebp
  40159e:	89 e5                	mov    %esp,%ebp
  4015a0:	83 ec 10             	sub    $0x10,%esp
  4015a3:	8d 45 08             	lea    0x8(%ebp),%eax
  4015a6:	89 45 fc             	mov    %eax,-0x4(%ebp)
  4015a9:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4015ac:	8b 00                	mov    (%eax),%eax
  4015ae:	c1 e8 17             	shr    $0x17,%eax
  4015b1:	25 ff 00 00 00       	and    $0xff,%eax
  4015b6:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4015b9:	83 6d f8 7f          	subl   $0x7f,-0x8(%ebp)
  4015bd:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4015c0:	c9                   	leave
  4015c1:	c3                   	ret

004015c2 <float_getLeft>:
  4015c2:	55                   	push   %ebp
  4015c3:	89 e5                	mov    %esp,%ebp
  4015c5:	83 ec 20             	sub    $0x20,%esp
  4015c8:	d9 45 08             	flds   0x8(%ebp)
  4015cb:	8d 64 24 fc          	lea    -0x4(%esp),%esp
  4015cf:	d9 1c 24             	fstps  (%esp)
  4015d2:	e8 c6 ff ff ff       	call   40159d <float_getExponent>
  4015d7:	83 c4 04             	add    $0x4,%esp
  4015da:	89 45 f0             	mov    %eax,-0x10(%ebp)
  4015dd:	8d 45 08             	lea    0x8(%ebp),%eax
  4015e0:	89 45 ec             	mov    %eax,-0x14(%ebp)
  4015e3:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
  4015ea:	b8 17 00 00 00       	mov    $0x17,%eax
  4015ef:	2b 45 f0             	sub    -0x10(%ebp),%eax
  4015f2:	89 45 e8             	mov    %eax,-0x18(%ebp)
  4015f5:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%ebp)
  4015fc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  401603:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  401607:	79 04                	jns    40160d <float_getLeft+0x4b>
  401609:	d9 ee                	fldz
  40160b:	eb 3b                	jmp    401648 <float_getLeft+0x86>
  40160d:	83 7d f0 17          	cmpl   $0x17,-0x10(%ebp)
  401611:	7e 05                	jle    401618 <float_getLeft+0x56>
  401613:	d9 45 08             	flds   0x8(%ebp)
  401616:	eb 30                	jmp    401648 <float_getLeft+0x86>
  401618:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  40161f:	eb 0d                	jmp    40162e <float_getLeft+0x6c>
  401621:	8b 45 f8             	mov    -0x8(%ebp),%eax
  401624:	29 45 fc             	sub    %eax,-0x4(%ebp)
  401627:	d1 65 f8             	shll   $1,-0x8(%ebp)
  40162a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  40162e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401631:	3b 45 e8             	cmp    -0x18(%ebp),%eax
  401634:	7c eb                	jl     401621 <float_getLeft+0x5f>
  401636:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401639:	8b 00                	mov    (%eax),%eax
  40163b:	23 45 fc             	and    -0x4(%ebp),%eax
  40163e:	89 c2                	mov    %eax,%edx
  401640:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401643:	89 10                	mov    %edx,(%eax)
  401645:	d9 45 08             	flds   0x8(%ebp)
  401648:	c9                   	leave
  401649:	c3                   	ret

0040164a <float_getRight>:
  40164a:	55                   	push   %ebp
  40164b:	89 e5                	mov    %esp,%ebp
  40164d:	83 ec 10             	sub    $0x10,%esp
  401650:	ff 75 08             	push   0x8(%ebp)
  401653:	e8 6a ff ff ff       	call   4015c2 <float_getLeft>
  401658:	83 c4 04             	add    $0x4,%esp
  40165b:	d9 5d fc             	fstps  -0x4(%ebp)
  40165e:	d9 45 08             	flds   0x8(%ebp)
  401661:	d8 65 fc             	fsubs  -0x4(%ebp)
  401664:	c9                   	leave
  401665:	c3                   	ret

00401666 <float_isZero>:
  401666:	55                   	push   %ebp
  401667:	89 e5                	mov    %esp,%ebp
  401669:	ff 75 08             	push   0x8(%ebp)
  40166c:	e8 14 ff ff ff       	call   401585 <float_getMantissa>
  401671:	83 c4 04             	add    $0x4,%esp
  401674:	85 c0                	test   %eax,%eax
  401676:	75 16                	jne    40168e <float_isZero+0x28>
  401678:	ff 75 08             	push   0x8(%ebp)
  40167b:	e8 1d ff ff ff       	call   40159d <float_getExponent>
  401680:	83 c4 04             	add    $0x4,%esp
  401683:	85 c0                	test   %eax,%eax
  401685:	75 07                	jne    40168e <float_isZero+0x28>
  401687:	b8 01 00 00 00       	mov    $0x1,%eax
  40168c:	eb 05                	jmp    401693 <float_isZero+0x2d>
  40168e:	b8 00 00 00 00       	mov    $0x0,%eax
  401693:	c9                   	leave
  401694:	c3                   	ret

00401695 <float_isUpOverFlow>:
  401695:	55                   	push   %ebp
  401696:	89 e5                	mov    %esp,%ebp
  401698:	ff 75 08             	push   0x8(%ebp)
  40169b:	e8 fd fe ff ff       	call   40159d <float_getExponent>
  4016a0:	83 c4 04             	add    $0x4,%esp
  4016a3:	3d 80 00 00 00       	cmp    $0x80,%eax
  4016a8:	0f 94 c0             	sete   %al
  4016ab:	0f b6 c0             	movzbl %al,%eax
  4016ae:	c9                   	leave
  4016af:	c3                   	ret

004016b0 <float_isDownOverFlow>:
  4016b0:	55                   	push   %ebp
  4016b1:	89 e5                	mov    %esp,%ebp
  4016b3:	ff 75 08             	push   0x8(%ebp)
  4016b6:	e8 e2 fe ff ff       	call   40159d <float_getExponent>
  4016bb:	83 c4 04             	add    $0x4,%esp
  4016be:	83 f8 81             	cmp    $0xffffff81,%eax
  4016c1:	75 16                	jne    4016d9 <float_isDownOverFlow+0x29>
  4016c3:	ff 75 08             	push   0x8(%ebp)
  4016c6:	e8 ba fe ff ff       	call   401585 <float_getMantissa>
  4016cb:	83 c4 04             	add    $0x4,%esp
  4016ce:	85 c0                	test   %eax,%eax
  4016d0:	75 07                	jne    4016d9 <float_isDownOverFlow+0x29>
  4016d2:	b8 01 00 00 00       	mov    $0x1,%eax
  4016d7:	eb 05                	jmp    4016de <float_isDownOverFlow+0x2e>
  4016d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4016de:	c9                   	leave
  4016df:	c3                   	ret

004016e0 <malloc>:
  4016e0:	55                   	push   %ebp
  4016e1:	89 e5                	mov    %esp,%ebp
  4016e3:	83 ec 18             	sub    $0x18,%esp
  4016e6:	a1 00 90 40 00       	mov    0x409000,%eax
  4016eb:	85 c0                	test   %eax,%eax
  4016ed:	75 48                	jne    401737 <malloc+0x57>
  4016ef:	83 ec 0c             	sub    $0xc,%esp
  4016f2:	6a 00                	push   $0x0
  4016f4:	e8 18 1e 00 00       	call   403511 <sbrk>
  4016f9:	83 c4 10             	add    $0x10,%esp
  4016fc:	a3 00 90 40 00       	mov    %eax,0x409000
  401701:	83 ec 0c             	sub    $0xc,%esp
  401704:	68 00 30 00 00       	push   $0x3000
  401709:	e8 03 1e 00 00       	call   403511 <sbrk>
  40170e:	83 c4 10             	add    $0x10,%esp
  401711:	a3 04 90 40 00       	mov    %eax,0x409004
  401716:	a1 00 90 40 00       	mov    0x409000,%eax
  40171b:	a3 08 90 40 00       	mov    %eax,0x409008
  401720:	a1 08 90 40 00       	mov    0x409008,%eax
  401725:	c7 00 08 00 00 00    	movl   $0x8,(%eax)
  40172b:	a1 08 90 40 00       	mov    0x409008,%eax
  401730:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  401737:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  40173b:	75 0a                	jne    401747 <malloc+0x67>
  40173d:	b8 00 00 00 00       	mov    $0x0,%eax
  401742:	e9 11 01 00 00       	jmp    401858 <malloc+0x178>
  401747:	83 45 08 08          	addl   $0x8,0x8(%ebp)
  40174b:	8b 45 08             	mov    0x8(%ebp),%eax
  40174e:	83 c0 07             	add    $0x7,%eax
  401751:	83 e0 f8             	and    $0xfffffff8,%eax
  401754:	89 45 08             	mov    %eax,0x8(%ebp)
  401757:	a1 08 90 40 00       	mov    0x409008,%eax
  40175c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  40175f:	eb 57                	jmp    4017b8 <malloc+0xd8>
  401761:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401764:	8b 40 04             	mov    0x4(%eax),%eax
  401767:	89 c2                	mov    %eax,%edx
  401769:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40176c:	8b 00                	mov    (%eax),%eax
  40176e:	29 c2                	sub    %eax,%edx
  401770:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401773:	29 c2                	sub    %eax,%edx
  401775:	3b 55 08             	cmp    0x8(%ebp),%edx
  401778:	72 35                	jb     4017af <malloc+0xcf>
  40177a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40177d:	8b 10                	mov    (%eax),%edx
  40177f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401782:	01 d0                	add    %edx,%eax
  401784:	89 45 ec             	mov    %eax,-0x14(%ebp)
  401787:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40178a:	8b 50 04             	mov    0x4(%eax),%edx
  40178d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401790:	89 50 04             	mov    %edx,0x4(%eax)
  401793:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401796:	8b 55 ec             	mov    -0x14(%ebp),%edx
  401799:	89 50 04             	mov    %edx,0x4(%eax)
  40179c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  40179f:	8b 55 08             	mov    0x8(%ebp),%edx
  4017a2:	89 10                	mov    %edx,(%eax)
  4017a4:	8b 45 ec             	mov    -0x14(%ebp),%eax
  4017a7:	83 c0 08             	add    $0x8,%eax
  4017aa:	e9 a9 00 00 00       	jmp    401858 <malloc+0x178>
  4017af:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4017b2:	8b 40 04             	mov    0x4(%eax),%eax
  4017b5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  4017b8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4017bb:	8b 40 04             	mov    0x4(%eax),%eax
  4017be:	85 c0                	test   %eax,%eax
  4017c0:	75 9f                	jne    401761 <malloc+0x81>
  4017c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4017c5:	8b 10                	mov    (%eax),%edx
  4017c7:	a1 04 90 40 00       	mov    0x409004,%eax
  4017cc:	2b 45 f4             	sub    -0xc(%ebp),%eax
  4017cf:	29 c2                	sub    %eax,%edx
  4017d1:	8b 45 08             	mov    0x8(%ebp),%eax
  4017d4:	01 d0                	add    %edx,%eax
  4017d6:	89 45 f0             	mov    %eax,-0x10(%ebp)
  4017d9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  4017dc:	8d 88 ff 2f 00 00    	lea    0x2fff(%eax),%ecx
  4017e2:	ba ab aa aa 2a       	mov    $0x2aaaaaab,%edx
  4017e7:	89 c8                	mov    %ecx,%eax
  4017e9:	f7 ea                	imul   %edx
  4017eb:	c1 fa 0b             	sar    $0xb,%edx
  4017ee:	89 c8                	mov    %ecx,%eax
  4017f0:	c1 f8 1f             	sar    $0x1f,%eax
  4017f3:	29 c2                	sub    %eax,%edx
  4017f5:	89 d0                	mov    %edx,%eax
  4017f7:	01 c0                	add    %eax,%eax
  4017f9:	01 d0                	add    %edx,%eax
  4017fb:	c1 e0 0c             	shl    $0xc,%eax
  4017fe:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401801:	83 ec 0c             	sub    $0xc,%esp
  401804:	ff 75 f0             	push   -0x10(%ebp)
  401807:	e8 05 1d 00 00       	call   403511 <sbrk>
  40180c:	83 c4 10             	add    $0x10,%esp
  40180f:	a3 04 90 40 00       	mov    %eax,0x409004
  401814:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401817:	8b 10                	mov    (%eax),%edx
  401819:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40181c:	01 c2                	add    %eax,%edx
  40181e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401821:	89 50 04             	mov    %edx,0x4(%eax)
  401824:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401827:	8b 40 04             	mov    0x4(%eax),%eax
  40182a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  40182d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401830:	8b 55 08             	mov    0x8(%ebp),%edx
  401833:	89 10                	mov    %edx,(%eax)
  401835:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401838:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  40183f:	83 ec 08             	sub    $0x8,%esp
  401842:	ff 75 f4             	push   -0xc(%ebp)
  401845:	68 56 70 40 00       	push   $0x407056
  40184a:	e8 2b 0d 00 00       	call   40257a <printf>
  40184f:	83 c4 10             	add    $0x10,%esp
  401852:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401855:	83 c0 08             	add    $0x8,%eax
  401858:	c9                   	leave
  401859:	c3                   	ret

0040185a <free>:
  40185a:	55                   	push   %ebp
  40185b:	89 e5                	mov    %esp,%ebp
  40185d:	83 ec 18             	sub    $0x18,%esp
  401860:	8b 45 08             	mov    0x8(%ebp),%eax
  401863:	83 e8 08             	sub    $0x8,%eax
  401866:	89 45 ec             	mov    %eax,-0x14(%ebp)
  401869:	a1 08 90 40 00       	mov    0x409008,%eax
  40186e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401871:	a1 08 90 40 00       	mov    0x409008,%eax
  401876:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401879:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  40187d:	0f 85 93 00 00 00    	jne    401916 <free+0xbc>
  401883:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401888:	e9 98 00 00 00       	jmp    401925 <free+0xcb>
  40188d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401890:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  401893:	75 72                	jne    401907 <free+0xad>
  401895:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401898:	8b 50 04             	mov    0x4(%eax),%edx
  40189b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  40189e:	89 50 04             	mov    %edx,0x4(%eax)
  4018a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
  4018a4:	8b 40 04             	mov    0x4(%eax),%eax
  4018a7:	85 c0                	test   %eax,%eax
  4018a9:	75 55                	jne    401900 <free+0xa6>
  4018ab:	8b 45 f0             	mov    -0x10(%ebp),%eax
  4018ae:	8b 10                	mov    (%eax),%edx
  4018b0:	8b 45 f0             	mov    -0x10(%ebp),%eax
  4018b3:	01 d0                	add    %edx,%eax
  4018b5:	89 45 e8             	mov    %eax,-0x18(%ebp)
  4018b8:	a1 04 90 40 00       	mov    0x409004,%eax
  4018bd:	2b 45 e8             	sub    -0x18(%ebp),%eax
  4018c0:	3d 00 60 00 00       	cmp    $0x6000,%eax
  4018c5:	7e 39                	jle    401900 <free+0xa6>
  4018c7:	a1 04 90 40 00       	mov    0x409004,%eax
  4018cc:	2b 45 e8             	sub    -0x18(%ebp),%eax
  4018cf:	89 c1                	mov    %eax,%ecx
  4018d1:	ba ab aa aa 2a       	mov    $0x2aaaaaab,%edx
  4018d6:	89 c8                	mov    %ecx,%eax
  4018d8:	f7 ea                	imul   %edx
  4018da:	89 d0                	mov    %edx,%eax
  4018dc:	c1 f8 0b             	sar    $0xb,%eax
  4018df:	c1 f9 1f             	sar    $0x1f,%ecx
  4018e2:	89 ca                	mov    %ecx,%edx
  4018e4:	29 c2                	sub    %eax,%edx
  4018e6:	89 d0                	mov    %edx,%eax
  4018e8:	01 c0                	add    %eax,%eax
  4018ea:	01 d0                	add    %edx,%eax
  4018ec:	c1 e0 0c             	shl    $0xc,%eax
  4018ef:	83 ec 0c             	sub    $0xc,%esp
  4018f2:	50                   	push   %eax
  4018f3:	e8 19 1c 00 00       	call   403511 <sbrk>
  4018f8:	83 c4 10             	add    $0x10,%esp
  4018fb:	a3 04 90 40 00       	mov    %eax,0x409004
  401900:	b8 00 00 00 00       	mov    $0x0,%eax
  401905:	eb 1e                	jmp    401925 <free+0xcb>
  401907:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40190a:	89 45 f0             	mov    %eax,-0x10(%ebp)
  40190d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401910:	8b 40 04             	mov    0x4(%eax),%eax
  401913:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401916:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  40191a:	0f 85 6d ff ff ff    	jne    40188d <free+0x33>
  401920:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401925:	c9                   	leave
  401926:	c3                   	ret

00401927 <find_spec>:
  401927:	55                   	push   %ebp
  401928:	89 e5                	mov    %esp,%ebp
  40192a:	83 ec 10             	sub    $0x10,%esp
  40192d:	8b 45 08             	mov    0x8(%ebp),%eax
  401930:	8b 40 08             	mov    0x8(%eax),%eax
  401933:	89 45 fc             	mov    %eax,-0x4(%ebp)
  401936:	eb 04                	jmp    40193c <find_spec+0x15>
  401938:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  40193c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40193f:	0f b6 00             	movzbl (%eax),%eax
  401942:	84 c0                	test   %al,%al
  401944:	74 0a                	je     401950 <find_spec+0x29>
  401946:	8b 45 fc             	mov    -0x4(%ebp),%eax
  401949:	0f b6 00             	movzbl (%eax),%eax
  40194c:	3c 25                	cmp    $0x25,%al
  40194e:	75 e8                	jne    401938 <find_spec+0x11>
  401950:	8b 45 08             	mov    0x8(%ebp),%eax
  401953:	8b 55 fc             	mov    -0x4(%ebp),%edx
  401956:	89 50 04             	mov    %edx,0x4(%eax)
  401959:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40195c:	0f b6 00             	movzbl (%eax),%eax
  40195f:	84 c0                	test   %al,%al
  401961:	75 07                	jne    40196a <find_spec+0x43>
  401963:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401968:	eb 05                	jmp    40196f <find_spec+0x48>
  40196a:	b8 00 00 00 00       	mov    $0x0,%eax
  40196f:	c9                   	leave
  401970:	c3                   	ret

00401971 <parse_spec>:
  401971:	55                   	push   %ebp
  401972:	89 e5                	mov    %esp,%ebp
  401974:	83 ec 18             	sub    $0x18,%esp
  401977:	8b 45 08             	mov    0x8(%ebp),%eax
  40197a:	8b 40 04             	mov    0x4(%eax),%eax
  40197d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401980:	8b 45 08             	mov    0x8(%ebp),%eax
  401983:	c7 40 24 00 00 00 00 	movl   $0x0,0x24(%eax)
  40198a:	8b 45 08             	mov    0x8(%ebp),%eax
  40198d:	c7 40 28 00 00 00 00 	movl   $0x0,0x28(%eax)
  401994:	8b 45 08             	mov    0x8(%ebp),%eax
  401997:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
  40199e:	8b 45 08             	mov    0x8(%ebp),%eax
  4019a1:	c7 40 30 00 00 00 00 	movl   $0x0,0x30(%eax)
  4019a8:	8b 45 08             	mov    0x8(%ebp),%eax
  4019ab:	c6 40 3c 20          	movb   $0x20,0x3c(%eax)
  4019af:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4019b2:	83 c0 01             	add    $0x1,%eax
  4019b5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  4019b8:	eb 58                	jmp    401a12 <parse_spec+0xa1>
  4019ba:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4019bd:	8d 50 01             	lea    0x1(%eax),%edx
  4019c0:	89 55 f4             	mov    %edx,-0xc(%ebp)
  4019c3:	0f b6 00             	movzbl (%eax),%eax
  4019c6:	0f be c0             	movsbl %al,%eax
  4019c9:	83 e8 20             	sub    $0x20,%eax
  4019cc:	83 f8 10             	cmp    $0x10,%eax
  4019cf:	77 41                	ja     401a12 <parse_spec+0xa1>
  4019d1:	8b 04 85 5c 70 40 00 	mov    0x40705c(,%eax,4),%eax
  4019d8:	ff e0                	jmp    *%eax
  4019da:	8b 45 08             	mov    0x8(%ebp),%eax
  4019dd:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%eax)
  4019e4:	eb 2c                	jmp    401a12 <parse_spec+0xa1>
  4019e6:	8b 45 08             	mov    0x8(%ebp),%eax
  4019e9:	c6 40 3c 30          	movb   $0x30,0x3c(%eax)
  4019ed:	eb 23                	jmp    401a12 <parse_spec+0xa1>
  4019ef:	8b 45 08             	mov    0x8(%ebp),%eax
  4019f2:	c7 40 30 01 00 00 00 	movl   $0x1,0x30(%eax)
  4019f9:	eb 17                	jmp    401a12 <parse_spec+0xa1>
  4019fb:	8b 45 08             	mov    0x8(%ebp),%eax
  4019fe:	c7 40 2c 01 00 00 00 	movl   $0x1,0x2c(%eax)
  401a05:	eb 0b                	jmp    401a12 <parse_spec+0xa1>
  401a07:	8b 45 08             	mov    0x8(%ebp),%eax
  401a0a:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
  401a11:	90                   	nop
  401a12:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401a15:	0f b6 00             	movzbl (%eax),%eax
  401a18:	3c 20                	cmp    $0x20,%al
  401a1a:	74 9e                	je     4019ba <parse_spec+0x49>
  401a1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401a1f:	0f b6 00             	movzbl (%eax),%eax
  401a22:	3c 30                	cmp    $0x30,%al
  401a24:	74 94                	je     4019ba <parse_spec+0x49>
  401a26:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401a29:	0f b6 00             	movzbl (%eax),%eax
  401a2c:	3c 2b                	cmp    $0x2b,%al
  401a2e:	74 8a                	je     4019ba <parse_spec+0x49>
  401a30:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401a33:	0f b6 00             	movzbl (%eax),%eax
  401a36:	3c 2d                	cmp    $0x2d,%al
  401a38:	74 80                	je     4019ba <parse_spec+0x49>
  401a3a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401a3d:	0f b6 00             	movzbl (%eax),%eax
  401a40:	3c 23                	cmp    $0x23,%al
  401a42:	0f 84 72 ff ff ff    	je     4019ba <parse_spec+0x49>
  401a48:	8b 45 08             	mov    0x8(%ebp),%eax
  401a4b:	8b 40 2c             	mov    0x2c(%eax),%eax
  401a4e:	85 c0                	test   %eax,%eax
  401a50:	74 07                	je     401a59 <parse_spec+0xe8>
  401a52:	8b 45 08             	mov    0x8(%ebp),%eax
  401a55:	c6 40 3c 20          	movb   $0x20,0x3c(%eax)
  401a59:	8b 45 08             	mov    0x8(%ebp),%eax
  401a5c:	c7 40 10 ff ff ff ff 	movl   $0xffffffff,0x10(%eax)
  401a63:	8b 45 08             	mov    0x8(%ebp),%eax
  401a66:	c7 40 0c ff ff ff ff 	movl   $0xffffffff,0xc(%eax)
  401a6d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401a70:	0f b6 00             	movzbl (%eax),%eax
  401a73:	3c 2f                	cmp    $0x2f,%al
  401a75:	7e 21                	jle    401a98 <parse_spec+0x127>
  401a77:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401a7a:	0f b6 00             	movzbl (%eax),%eax
  401a7d:	3c 39                	cmp    $0x39,%al
  401a7f:	7f 17                	jg     401a98 <parse_spec+0x127>
  401a81:	83 ec 0c             	sub    $0xc,%esp
  401a84:	8d 45 f4             	lea    -0xc(%ebp),%eax
  401a87:	50                   	push   %eax
  401a88:	e8 13 01 00 00       	call   401ba0 <read_int>
  401a8d:	83 c4 10             	add    $0x10,%esp
  401a90:	89 c2                	mov    %eax,%edx
  401a92:	8b 45 08             	mov    0x8(%ebp),%eax
  401a95:	89 50 10             	mov    %edx,0x10(%eax)
  401a98:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401a9b:	0f b6 00             	movzbl (%eax),%eax
  401a9e:	3c 2e                	cmp    $0x2e,%al
  401aa0:	75 34                	jne    401ad6 <parse_spec+0x165>
  401aa2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401aa5:	83 c0 01             	add    $0x1,%eax
  401aa8:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401aab:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401aae:	0f b6 00             	movzbl (%eax),%eax
  401ab1:	3c 2f                	cmp    $0x2f,%al
  401ab3:	7e 21                	jle    401ad6 <parse_spec+0x165>
  401ab5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401ab8:	0f b6 00             	movzbl (%eax),%eax
  401abb:	3c 39                	cmp    $0x39,%al
  401abd:	7f 17                	jg     401ad6 <parse_spec+0x165>
  401abf:	83 ec 0c             	sub    $0xc,%esp
  401ac2:	8d 45 f4             	lea    -0xc(%ebp),%eax
  401ac5:	50                   	push   %eax
  401ac6:	e8 d5 00 00 00       	call   401ba0 <read_int>
  401acb:	83 c4 10             	add    $0x10,%esp
  401ace:	89 c2                	mov    %eax,%edx
  401ad0:	8b 45 08             	mov    0x8(%ebp),%eax
  401ad3:	89 50 0c             	mov    %edx,0xc(%eax)
  401ad6:	8b 45 08             	mov    0x8(%ebp),%eax
  401ad9:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)
  401ae0:	8b 45 08             	mov    0x8(%ebp),%eax
  401ae3:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
  401aea:	8b 45 08             	mov    0x8(%ebp),%eax
  401aed:	c7 40 20 00 00 00 00 	movl   $0x0,0x20(%eax)
  401af4:	8b 45 08             	mov    0x8(%ebp),%eax
  401af7:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
  401afe:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401b01:	0f b6 00             	movzbl (%eax),%eax
  401b04:	0f be c0             	movsbl %al,%eax
  401b07:	83 f8 68             	cmp    $0x68,%eax
  401b0a:	74 3c                	je     401b48 <parse_spec+0x1d7>
  401b0c:	83 f8 6c             	cmp    $0x6c,%eax
  401b0f:	75 6d                	jne    401b7e <parse_spec+0x20d>
  401b11:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401b14:	83 c0 01             	add    $0x1,%eax
  401b17:	0f b6 00             	movzbl (%eax),%eax
  401b1a:	3c 6c                	cmp    $0x6c,%al
  401b1c:	75 15                	jne    401b33 <parse_spec+0x1c2>
  401b1e:	8b 45 08             	mov    0x8(%ebp),%eax
  401b21:	c7 40 18 01 00 00 00 	movl   $0x1,0x18(%eax)
  401b28:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401b2b:	83 c0 01             	add    $0x1,%eax
  401b2e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401b31:	eb 0a                	jmp    401b3d <parse_spec+0x1cc>
  401b33:	8b 45 08             	mov    0x8(%ebp),%eax
  401b36:	c7 40 20 01 00 00 00 	movl   $0x1,0x20(%eax)
  401b3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401b40:	83 c0 01             	add    $0x1,%eax
  401b43:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401b46:	eb 36                	jmp    401b7e <parse_spec+0x20d>
  401b48:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401b4b:	83 c0 01             	add    $0x1,%eax
  401b4e:	0f b6 00             	movzbl (%eax),%eax
  401b51:	3c 68                	cmp    $0x68,%al
  401b53:	75 15                	jne    401b6a <parse_spec+0x1f9>
  401b55:	8b 45 08             	mov    0x8(%ebp),%eax
  401b58:	c7 40 38 01 00 00 00 	movl   $0x1,0x38(%eax)
  401b5f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401b62:	83 c0 01             	add    $0x1,%eax
  401b65:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401b68:	eb 0a                	jmp    401b74 <parse_spec+0x203>
  401b6a:	8b 45 08             	mov    0x8(%ebp),%eax
  401b6d:	c7 40 1c 01 00 00 00 	movl   $0x1,0x1c(%eax)
  401b74:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401b77:	83 c0 01             	add    $0x1,%eax
  401b7a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401b7d:	90                   	nop
  401b7e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401b81:	8d 50 01             	lea    0x1(%eax),%edx
  401b84:	89 55 f4             	mov    %edx,-0xc(%ebp)
  401b87:	0f b6 10             	movzbl (%eax),%edx
  401b8a:	8b 45 08             	mov    0x8(%ebp),%eax
  401b8d:	88 50 14             	mov    %dl,0x14(%eax)
  401b90:	8b 55 f4             	mov    -0xc(%ebp),%edx
  401b93:	8b 45 08             	mov    0x8(%ebp),%eax
  401b96:	89 50 08             	mov    %edx,0x8(%eax)
  401b99:	b8 00 00 00 00       	mov    $0x0,%eax
  401b9e:	c9                   	leave
  401b9f:	c3                   	ret

00401ba0 <read_int>:
  401ba0:	55                   	push   %ebp
  401ba1:	89 e5                	mov    %esp,%ebp
  401ba3:	83 ec 10             	sub    $0x10,%esp
  401ba6:	8b 45 08             	mov    0x8(%ebp),%eax
  401ba9:	8b 00                	mov    (%eax),%eax
  401bab:	8d 48 01             	lea    0x1(%eax),%ecx
  401bae:	8b 55 08             	mov    0x8(%ebp),%edx
  401bb1:	89 0a                	mov    %ecx,(%edx)
  401bb3:	0f b6 00             	movzbl (%eax),%eax
  401bb6:	0f be c0             	movsbl %al,%eax
  401bb9:	83 e8 30             	sub    $0x30,%eax
  401bbc:	89 45 fc             	mov    %eax,-0x4(%ebp)
  401bbf:	eb 32                	jmp    401bf3 <read_int+0x53>
  401bc1:	8b 55 fc             	mov    -0x4(%ebp),%edx
  401bc4:	89 d0                	mov    %edx,%eax
  401bc6:	c1 e0 02             	shl    $0x2,%eax
  401bc9:	01 d0                	add    %edx,%eax
  401bcb:	01 c0                	add    %eax,%eax
  401bcd:	89 45 fc             	mov    %eax,-0x4(%ebp)
  401bd0:	8b 45 08             	mov    0x8(%ebp),%eax
  401bd3:	8b 00                	mov    (%eax),%eax
  401bd5:	0f b6 00             	movzbl (%eax),%eax
  401bd8:	0f be d0             	movsbl %al,%edx
  401bdb:	8b 45 fc             	mov    -0x4(%ebp),%eax
  401bde:	01 d0                	add    %edx,%eax
  401be0:	83 e8 30             	sub    $0x30,%eax
  401be3:	89 45 fc             	mov    %eax,-0x4(%ebp)
  401be6:	8b 45 08             	mov    0x8(%ebp),%eax
  401be9:	8b 00                	mov    (%eax),%eax
  401beb:	8d 50 01             	lea    0x1(%eax),%edx
  401bee:	8b 45 08             	mov    0x8(%ebp),%eax
  401bf1:	89 10                	mov    %edx,(%eax)
  401bf3:	8b 45 08             	mov    0x8(%ebp),%eax
  401bf6:	8b 00                	mov    (%eax),%eax
  401bf8:	0f b6 00             	movzbl (%eax),%eax
  401bfb:	3c 2f                	cmp    $0x2f,%al
  401bfd:	7e 0c                	jle    401c0b <read_int+0x6b>
  401bff:	8b 45 08             	mov    0x8(%ebp),%eax
  401c02:	8b 00                	mov    (%eax),%eax
  401c04:	0f b6 00             	movzbl (%eax),%eax
  401c07:	3c 39                	cmp    $0x39,%al
  401c09:	7e b6                	jle    401bc1 <read_int+0x21>
  401c0b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  401c0e:	c9                   	leave
  401c0f:	c3                   	ret

00401c10 <sprintf_char>:
  401c10:	55                   	push   %ebp
  401c11:	89 e5                	mov    %esp,%ebp
  401c13:	83 ec 10             	sub    $0x10,%esp
  401c16:	8b 45 10             	mov    0x10(%ebp),%eax
  401c19:	8b 10                	mov    (%eax),%edx
  401c1b:	8b 45 0c             	mov    0xc(%ebp),%eax
  401c1e:	01 d0                	add    %edx,%eax
  401c20:	0f b6 00             	movzbl (%eax),%eax
  401c23:	88 45 ff             	mov    %al,-0x1(%ebp)
  401c26:	8b 45 10             	mov    0x10(%ebp),%eax
  401c29:	8b 00                	mov    (%eax),%eax
  401c2b:	8d 50 04             	lea    0x4(%eax),%edx
  401c2e:	8b 45 10             	mov    0x10(%ebp),%eax
  401c31:	89 10                	mov    %edx,(%eax)
  401c33:	8b 45 08             	mov    0x8(%ebp),%eax
  401c36:	0f b6 55 ff          	movzbl -0x1(%ebp),%edx
  401c3a:	88 10                	mov    %dl,(%eax)
  401c3c:	b8 01 00 00 00       	mov    $0x1,%eax
  401c41:	c9                   	leave
  401c42:	c3                   	ret

00401c43 <sprintf_string>:
  401c43:	55                   	push   %ebp
  401c44:	89 e5                	mov    %esp,%ebp
  401c46:	83 ec 28             	sub    $0x28,%esp
  401c49:	8b 45 14             	mov    0x14(%ebp),%eax
  401c4c:	8b 10                	mov    (%eax),%edx
  401c4e:	8b 45 10             	mov    0x10(%ebp),%eax
  401c51:	01 d0                	add    %edx,%eax
  401c53:	8b 00                	mov    (%eax),%eax
  401c55:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401c58:	83 ec 0c             	sub    $0xc,%esp
  401c5b:	ff 75 f4             	push   -0xc(%ebp)
  401c5e:	e8 c5 14 00 00       	call   403128 <strlen>
  401c63:	83 c4 10             	add    $0x10,%esp
  401c66:	89 45 e8             	mov    %eax,-0x18(%ebp)
  401c69:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  401c70:	8b 45 08             	mov    0x8(%ebp),%eax
  401c73:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401c76:	8b 45 14             	mov    0x14(%ebp),%eax
  401c79:	8b 00                	mov    (%eax),%eax
  401c7b:	8d 50 04             	lea    0x4(%eax),%edx
  401c7e:	8b 45 14             	mov    0x14(%ebp),%eax
  401c81:	89 10                	mov    %edx,(%eax)
  401c83:	8b 45 0c             	mov    0xc(%ebp),%eax
  401c86:	8b 40 04             	mov    0x4(%eax),%eax
  401c89:	83 f8 ff             	cmp    $0xffffffff,%eax
  401c8c:	75 09                	jne    401c97 <sprintf_string+0x54>
  401c8e:	8b 45 0c             	mov    0xc(%ebp),%eax
  401c91:	8b 55 e8             	mov    -0x18(%ebp),%edx
  401c94:	89 50 04             	mov    %edx,0x4(%eax)
  401c97:	8b 45 0c             	mov    0xc(%ebp),%eax
  401c9a:	8b 00                	mov    (%eax),%eax
  401c9c:	83 f8 ff             	cmp    $0xffffffff,%eax
  401c9f:	75 08                	jne    401ca9 <sprintf_string+0x66>
  401ca1:	8b 45 0c             	mov    0xc(%ebp),%eax
  401ca4:	8b 55 e8             	mov    -0x18(%ebp),%edx
  401ca7:	89 10                	mov    %edx,(%eax)
  401ca9:	8b 45 0c             	mov    0xc(%ebp),%eax
  401cac:	8b 10                	mov    (%eax),%edx
  401cae:	8b 45 0c             	mov    0xc(%ebp),%eax
  401cb1:	8b 40 04             	mov    0x4(%eax),%eax
  401cb4:	39 c2                	cmp    %eax,%edx
  401cb6:	7e 0b                	jle    401cc3 <sprintf_string+0x80>
  401cb8:	8b 45 0c             	mov    0xc(%ebp),%eax
  401cbb:	8b 10                	mov    (%eax),%edx
  401cbd:	8b 45 0c             	mov    0xc(%ebp),%eax
  401cc0:	89 50 04             	mov    %edx,0x4(%eax)
  401cc3:	8b 45 0c             	mov    0xc(%ebp),%eax
  401cc6:	8b 48 04             	mov    0x4(%eax),%ecx
  401cc9:	8b 45 0c             	mov    0xc(%ebp),%eax
  401ccc:	8b 10                	mov    (%eax),%edx
  401cce:	8b 45 e8             	mov    -0x18(%ebp),%eax
  401cd1:	39 c2                	cmp    %eax,%edx
  401cd3:	0f 4e c2             	cmovle %edx,%eax
  401cd6:	29 c1                	sub    %eax,%ecx
  401cd8:	89 ca                	mov    %ecx,%edx
  401cda:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  401cdd:	8b 45 0c             	mov    0xc(%ebp),%eax
  401ce0:	8b 40 20             	mov    0x20(%eax),%eax
  401ce3:	85 c0                	test   %eax,%eax
  401ce5:	75 1b                	jne    401d02 <sprintf_string+0xbf>
  401ce7:	eb 0c                	jmp    401cf5 <sprintf_string+0xb2>
  401ce9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  401cec:	8d 50 01             	lea    0x1(%eax),%edx
  401cef:	89 55 f0             	mov    %edx,-0x10(%ebp)
  401cf2:	c6 00 20             	movb   $0x20,(%eax)
  401cf5:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  401cf8:	8b 45 08             	mov    0x8(%ebp),%eax
  401cfb:	01 d0                	add    %edx,%eax
  401cfd:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  401d00:	72 e7                	jb     401ce9 <sprintf_string+0xa6>
  401d02:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  401d09:	eb 1b                	jmp    401d26 <sprintf_string+0xe3>
  401d0b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  401d0e:	8d 42 01             	lea    0x1(%edx),%eax
  401d11:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401d14:	8b 45 f0             	mov    -0x10(%ebp),%eax
  401d17:	8d 48 01             	lea    0x1(%eax),%ecx
  401d1a:	89 4d f0             	mov    %ecx,-0x10(%ebp)
  401d1d:	0f b6 12             	movzbl (%edx),%edx
  401d20:	88 10                	mov    %dl,(%eax)
  401d22:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  401d26:	8b 45 f4             	mov    -0xc(%ebp),%eax
  401d29:	0f b6 00             	movzbl (%eax),%eax
  401d2c:	84 c0                	test   %al,%al
  401d2e:	74 0e                	je     401d3e <sprintf_string+0xfb>
  401d30:	8b 45 0c             	mov    0xc(%ebp),%eax
  401d33:	8b 40 04             	mov    0x4(%eax),%eax
  401d36:	2b 45 e4             	sub    -0x1c(%ebp),%eax
  401d39:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  401d3c:	7c cd                	jl     401d0b <sprintf_string+0xc8>
  401d3e:	8b 45 0c             	mov    0xc(%ebp),%eax
  401d41:	8b 40 20             	mov    0x20(%eax),%eax
  401d44:	85 c0                	test   %eax,%eax
  401d46:	74 20                	je     401d68 <sprintf_string+0x125>
  401d48:	eb 0c                	jmp    401d56 <sprintf_string+0x113>
  401d4a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  401d4d:	8d 50 01             	lea    0x1(%eax),%edx
  401d50:	89 55 f0             	mov    %edx,-0x10(%ebp)
  401d53:	c6 00 20             	movb   $0x20,(%eax)
  401d56:	8b 45 0c             	mov    0xc(%ebp),%eax
  401d59:	8b 40 04             	mov    0x4(%eax),%eax
  401d5c:	89 c2                	mov    %eax,%edx
  401d5e:	8b 45 08             	mov    0x8(%ebp),%eax
  401d61:	01 d0                	add    %edx,%eax
  401d63:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  401d66:	72 e2                	jb     401d4a <sprintf_string+0x107>
  401d68:	8b 45 0c             	mov    0xc(%ebp),%eax
  401d6b:	8b 40 04             	mov    0x4(%eax),%eax
  401d6e:	c9                   	leave
  401d6f:	c3                   	ret

00401d70 <sprintf_interger>:
  401d70:	55                   	push   %ebp
  401d71:	89 e5                	mov    %esp,%ebp
  401d73:	53                   	push   %ebx
  401d74:	81 ec 44 01 00 00    	sub    $0x144,%esp
  401d7a:	8b 45 08             	mov    0x8(%ebp),%eax
  401d7d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  401d80:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  401d87:	8d 85 bd fe ff ff    	lea    -0x143(%ebp),%eax
  401d8d:	89 45 ec             	mov    %eax,-0x14(%ebp)
  401d90:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  401d97:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  401d9e:	8b 45 0c             	mov    0xc(%ebp),%eax
  401da1:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  401da5:	3c 69                	cmp    $0x69,%al
  401da7:	74 0f                	je     401db8 <sprintf_interger+0x48>
  401da9:	8b 45 0c             	mov    0xc(%ebp),%eax
  401dac:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  401db0:	3c 64                	cmp    $0x64,%al
  401db2:	0f 85 cc 00 00 00    	jne    401e84 <sprintf_interger+0x114>
  401db8:	8b 45 0c             	mov    0xc(%ebp),%eax
  401dbb:	8b 40 2c             	mov    0x2c(%eax),%eax
  401dbe:	85 c0                	test   %eax,%eax
  401dc0:	74 3e                	je     401e00 <sprintf_interger+0x90>
  401dc2:	8b 45 14             	mov    0x14(%ebp),%eax
  401dc5:	8b 10                	mov    (%eax),%edx
  401dc7:	8b 45 10             	mov    0x10(%ebp),%eax
  401dca:	01 d0                	add    %edx,%eax
  401dcc:	0f b6 00             	movzbl (%eax),%eax
  401dcf:	88 45 d1             	mov    %al,-0x2f(%ebp)
  401dd2:	8b 45 14             	mov    0x14(%ebp),%eax
  401dd5:	8b 00                	mov    (%eax),%eax
  401dd7:	8d 50 04             	lea    0x4(%eax),%edx
  401dda:	8b 45 14             	mov    0x14(%ebp),%eax
  401ddd:	89 10                	mov    %edx,(%eax)
  401ddf:	0f be 45 d1          	movsbl -0x2f(%ebp),%eax
  401de3:	83 ec 04             	sub    $0x4,%esp
  401de6:	6a 0a                	push   $0xa
  401de8:	8d 95 d1 fe ff ff    	lea    -0x12f(%ebp),%edx
  401dee:	52                   	push   %edx
  401def:	50                   	push   %eax
  401df0:	e8 fe 08 00 00       	call   4026f3 <itoa>
  401df5:	83 c4 10             	add    $0x10,%esp
  401df8:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401dfb:	e9 94 01 00 00       	jmp    401f94 <sprintf_interger+0x224>
  401e00:	8b 45 0c             	mov    0xc(%ebp),%eax
  401e03:	8b 40 10             	mov    0x10(%eax),%eax
  401e06:	85 c0                	test   %eax,%eax
  401e08:	74 3f                	je     401e49 <sprintf_interger+0xd9>
  401e0a:	8b 45 14             	mov    0x14(%ebp),%eax
  401e0d:	8b 10                	mov    (%eax),%edx
  401e0f:	8b 45 10             	mov    0x10(%ebp),%eax
  401e12:	01 d0                	add    %edx,%eax
  401e14:	0f b7 00             	movzwl (%eax),%eax
  401e17:	66 89 45 d2          	mov    %ax,-0x2e(%ebp)
  401e1b:	8b 45 14             	mov    0x14(%ebp),%eax
  401e1e:	8b 00                	mov    (%eax),%eax
  401e20:	8d 50 04             	lea    0x4(%eax),%edx
  401e23:	8b 45 14             	mov    0x14(%ebp),%eax
  401e26:	89 10                	mov    %edx,(%eax)
  401e28:	0f bf 45 d2          	movswl -0x2e(%ebp),%eax
  401e2c:	83 ec 04             	sub    $0x4,%esp
  401e2f:	6a 0a                	push   $0xa
  401e31:	8d 95 d1 fe ff ff    	lea    -0x12f(%ebp),%edx
  401e37:	52                   	push   %edx
  401e38:	50                   	push   %eax
  401e39:	e8 b5 08 00 00       	call   4026f3 <itoa>
  401e3e:	83 c4 10             	add    $0x10,%esp
  401e41:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401e44:	e9 4b 01 00 00       	jmp    401f94 <sprintf_interger+0x224>
  401e49:	8b 45 14             	mov    0x14(%ebp),%eax
  401e4c:	8b 10                	mov    (%eax),%edx
  401e4e:	8b 45 10             	mov    0x10(%ebp),%eax
  401e51:	01 d0                	add    %edx,%eax
  401e53:	8b 00                	mov    (%eax),%eax
  401e55:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  401e58:	8b 45 14             	mov    0x14(%ebp),%eax
  401e5b:	8b 00                	mov    (%eax),%eax
  401e5d:	8d 50 04             	lea    0x4(%eax),%edx
  401e60:	8b 45 14             	mov    0x14(%ebp),%eax
  401e63:	89 10                	mov    %edx,(%eax)
  401e65:	83 ec 04             	sub    $0x4,%esp
  401e68:	6a 0a                	push   $0xa
  401e6a:	8d 85 d1 fe ff ff    	lea    -0x12f(%ebp),%eax
  401e70:	50                   	push   %eax
  401e71:	ff 75 d4             	push   -0x2c(%ebp)
  401e74:	e8 7a 08 00 00       	call   4026f3 <itoa>
  401e79:	83 c4 10             	add    $0x10,%esp
  401e7c:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401e7f:	e9 10 01 00 00       	jmp    401f94 <sprintf_interger+0x224>
  401e84:	c7 45 e8 0a 00 00 00 	movl   $0xa,-0x18(%ebp)
  401e8b:	8b 45 0c             	mov    0xc(%ebp),%eax
  401e8e:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  401e92:	0f be c0             	movsbl %al,%eax
  401e95:	83 f8 78             	cmp    $0x78,%eax
  401e98:	74 1b                	je     401eb5 <sprintf_interger+0x145>
  401e9a:	83 f8 78             	cmp    $0x78,%eax
  401e9d:	7f 30                	jg     401ecf <sprintf_interger+0x15f>
  401e9f:	83 f8 75             	cmp    $0x75,%eax
  401ea2:	74 23                	je     401ec7 <sprintf_interger+0x157>
  401ea4:	83 f8 75             	cmp    $0x75,%eax
  401ea7:	7f 26                	jg     401ecf <sprintf_interger+0x15f>
  401ea9:	83 f8 58             	cmp    $0x58,%eax
  401eac:	74 07                	je     401eb5 <sprintf_interger+0x145>
  401eae:	83 f8 6f             	cmp    $0x6f,%eax
  401eb1:	74 0b                	je     401ebe <sprintf_interger+0x14e>
  401eb3:	eb 1a                	jmp    401ecf <sprintf_interger+0x15f>
  401eb5:	c7 45 e8 10 00 00 00 	movl   $0x10,-0x18(%ebp)
  401ebc:	eb 11                	jmp    401ecf <sprintf_interger+0x15f>
  401ebe:	c7 45 e8 08 00 00 00 	movl   $0x8,-0x18(%ebp)
  401ec5:	eb 08                	jmp    401ecf <sprintf_interger+0x15f>
  401ec7:	c7 45 e8 0a 00 00 00 	movl   $0xa,-0x18(%ebp)
  401ece:	90                   	nop
  401ecf:	8b 45 0c             	mov    0xc(%ebp),%eax
  401ed2:	8b 40 2c             	mov    0x2c(%eax),%eax
  401ed5:	85 c0                	test   %eax,%eax
  401ed7:	74 3c                	je     401f15 <sprintf_interger+0x1a5>
  401ed9:	8b 45 14             	mov    0x14(%ebp),%eax
  401edc:	8b 10                	mov    (%eax),%edx
  401ede:	8b 45 10             	mov    0x10(%ebp),%eax
  401ee1:	01 d0                	add    %edx,%eax
  401ee3:	0f b6 00             	movzbl (%eax),%eax
  401ee6:	88 45 d9             	mov    %al,-0x27(%ebp)
  401ee9:	8b 45 14             	mov    0x14(%ebp),%eax
  401eec:	8b 00                	mov    (%eax),%eax
  401eee:	8d 50 04             	lea    0x4(%eax),%edx
  401ef1:	8b 45 14             	mov    0x14(%ebp),%eax
  401ef4:	89 10                	mov    %edx,(%eax)
  401ef6:	0f b6 45 d9          	movzbl -0x27(%ebp),%eax
  401efa:	83 ec 04             	sub    $0x4,%esp
  401efd:	ff 75 e8             	push   -0x18(%ebp)
  401f00:	8d 95 d1 fe ff ff    	lea    -0x12f(%ebp),%edx
  401f06:	52                   	push   %edx
  401f07:	50                   	push   %eax
  401f08:	e8 e6 07 00 00       	call   4026f3 <itoa>
  401f0d:	83 c4 10             	add    $0x10,%esp
  401f10:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401f13:	eb 7f                	jmp    401f94 <sprintf_interger+0x224>
  401f15:	8b 45 0c             	mov    0xc(%ebp),%eax
  401f18:	8b 40 10             	mov    0x10(%eax),%eax
  401f1b:	85 c0                	test   %eax,%eax
  401f1d:	74 3d                	je     401f5c <sprintf_interger+0x1ec>
  401f1f:	8b 45 14             	mov    0x14(%ebp),%eax
  401f22:	8b 10                	mov    (%eax),%edx
  401f24:	8b 45 10             	mov    0x10(%ebp),%eax
  401f27:	01 d0                	add    %edx,%eax
  401f29:	0f b7 00             	movzwl (%eax),%eax
  401f2c:	66 89 45 da          	mov    %ax,-0x26(%ebp)
  401f30:	8b 45 14             	mov    0x14(%ebp),%eax
  401f33:	8b 00                	mov    (%eax),%eax
  401f35:	8d 50 04             	lea    0x4(%eax),%edx
  401f38:	8b 45 14             	mov    0x14(%ebp),%eax
  401f3b:	89 10                	mov    %edx,(%eax)
  401f3d:	0f b7 45 da          	movzwl -0x26(%ebp),%eax
  401f41:	83 ec 04             	sub    $0x4,%esp
  401f44:	ff 75 e8             	push   -0x18(%ebp)
  401f47:	8d 95 d1 fe ff ff    	lea    -0x12f(%ebp),%edx
  401f4d:	52                   	push   %edx
  401f4e:	50                   	push   %eax
  401f4f:	e8 9f 07 00 00       	call   4026f3 <itoa>
  401f54:	83 c4 10             	add    $0x10,%esp
  401f57:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401f5a:	eb 38                	jmp    401f94 <sprintf_interger+0x224>
  401f5c:	8b 45 14             	mov    0x14(%ebp),%eax
  401f5f:	8b 10                	mov    (%eax),%edx
  401f61:	8b 45 10             	mov    0x10(%ebp),%eax
  401f64:	01 d0                	add    %edx,%eax
  401f66:	8b 00                	mov    (%eax),%eax
  401f68:	89 45 dc             	mov    %eax,-0x24(%ebp)
  401f6b:	8b 45 14             	mov    0x14(%ebp),%eax
  401f6e:	8b 00                	mov    (%eax),%eax
  401f70:	8d 50 04             	lea    0x4(%eax),%edx
  401f73:	8b 45 14             	mov    0x14(%ebp),%eax
  401f76:	89 10                	mov    %edx,(%eax)
  401f78:	8b 45 dc             	mov    -0x24(%ebp),%eax
  401f7b:	83 ec 04             	sub    $0x4,%esp
  401f7e:	ff 75 e8             	push   -0x18(%ebp)
  401f81:	8d 95 d1 fe ff ff    	lea    -0x12f(%ebp),%edx
  401f87:	52                   	push   %edx
  401f88:	50                   	push   %eax
  401f89:	e8 65 07 00 00       	call   4026f3 <itoa>
  401f8e:	83 c4 10             	add    $0x10,%esp
  401f91:	89 45 f0             	mov    %eax,-0x10(%ebp)
  401f94:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  401f98:	75 0a                	jne    401fa4 <sprintf_interger+0x234>
  401f9a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f9f:	e9 86 01 00 00       	jmp    40212a <sprintf_interger+0x3ba>
  401fa4:	8b 45 0c             	mov    0xc(%ebp),%eax
  401fa7:	8b 40 18             	mov    0x18(%eax),%eax
  401faa:	85 c0                	test   %eax,%eax
  401fac:	74 4d                	je     401ffb <sprintf_interger+0x28b>
  401fae:	8b 45 0c             	mov    0xc(%ebp),%eax
  401fb1:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  401fb5:	0f be c0             	movsbl %al,%eax
  401fb8:	83 f8 78             	cmp    $0x78,%eax
  401fbb:	74 11                	je     401fce <sprintf_interger+0x25e>
  401fbd:	83 f8 78             	cmp    $0x78,%eax
  401fc0:	7f 39                	jg     401ffb <sprintf_interger+0x28b>
  401fc2:	83 f8 58             	cmp    $0x58,%eax
  401fc5:	74 07                	je     401fce <sprintf_interger+0x25e>
  401fc7:	83 f8 6f             	cmp    $0x6f,%eax
  401fca:	74 22                	je     401fee <sprintf_interger+0x27e>
  401fcc:	eb 2d                	jmp    401ffb <sprintf_interger+0x28b>
  401fce:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401fd1:	8d 50 01             	lea    0x1(%eax),%edx
  401fd4:	89 55 ec             	mov    %edx,-0x14(%ebp)
  401fd7:	c6 00 30             	movb   $0x30,(%eax)
  401fda:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401fdd:	8d 50 01             	lea    0x1(%eax),%edx
  401fe0:	89 55 ec             	mov    %edx,-0x14(%ebp)
  401fe3:	8b 55 0c             	mov    0xc(%ebp),%edx
  401fe6:	0f b6 52 08          	movzbl 0x8(%edx),%edx
  401fea:	88 10                	mov    %dl,(%eax)
  401fec:	eb 0d                	jmp    401ffb <sprintf_interger+0x28b>
  401fee:	8b 45 ec             	mov    -0x14(%ebp),%eax
  401ff1:	8d 50 01             	lea    0x1(%eax),%edx
  401ff4:	89 55 ec             	mov    %edx,-0x14(%ebp)
  401ff7:	c6 00 30             	movb   $0x30,(%eax)
  401ffa:	90                   	nop
  401ffb:	8b 45 0c             	mov    0xc(%ebp),%eax
  401ffe:	8b 40 24             	mov    0x24(%eax),%eax
  402001:	85 c0                	test   %eax,%eax
  402003:	74 2c                	je     402031 <sprintf_interger+0x2c1>
  402005:	8b 45 f0             	mov    -0x10(%ebp),%eax
  402008:	0f b6 00             	movzbl (%eax),%eax
  40200b:	3c 2d                	cmp    $0x2d,%al
  40200d:	74 22                	je     402031 <sprintf_interger+0x2c1>
  40200f:	8b 45 0c             	mov    0xc(%ebp),%eax
  402012:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  402016:	3c 64                	cmp    $0x64,%al
  402018:	74 0b                	je     402025 <sprintf_interger+0x2b5>
  40201a:	8b 45 0c             	mov    0xc(%ebp),%eax
  40201d:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  402021:	3c 69                	cmp    $0x69,%al
  402023:	75 0c                	jne    402031 <sprintf_interger+0x2c1>
  402025:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402028:	8d 50 01             	lea    0x1(%eax),%edx
  40202b:	89 55 ec             	mov    %edx,-0x14(%ebp)
  40202e:	c6 00 2b             	movb   $0x2b,(%eax)
  402031:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402034:	c6 00 00             	movb   $0x0,(%eax)
  402037:	83 ec 0c             	sub    $0xc,%esp
  40203a:	ff 75 f0             	push   -0x10(%ebp)
  40203d:	e8 e6 10 00 00       	call   403128 <strlen>
  402042:	83 c4 10             	add    $0x10,%esp
  402045:	89 c3                	mov    %eax,%ebx
  402047:	83 ec 0c             	sub    $0xc,%esp
  40204a:	ff 75 ec             	push   -0x14(%ebp)
  40204d:	e8 d6 10 00 00       	call   403128 <strlen>
  402052:	83 c4 10             	add    $0x10,%esp
  402055:	01 d8                	add    %ebx,%eax
  402057:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  40205a:	8b 45 0c             	mov    0xc(%ebp),%eax
  40205d:	8b 40 04             	mov    0x4(%eax),%eax
  402060:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
  402063:	7e 09                	jle    40206e <sprintf_interger+0x2fe>
  402065:	8b 45 0c             	mov    0xc(%ebp),%eax
  402068:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  40206b:	89 50 04             	mov    %edx,0x4(%eax)
  40206e:	8b 45 0c             	mov    0xc(%ebp),%eax
  402071:	8b 40 04             	mov    0x4(%eax),%eax
  402074:	2b 45 e4             	sub    -0x1c(%ebp),%eax
  402077:	89 45 e0             	mov    %eax,-0x20(%ebp)
  40207a:	8b 45 0c             	mov    0xc(%ebp),%eax
  40207d:	8b 40 20             	mov    0x20(%eax),%eax
  402080:	85 c0                	test   %eax,%eax
  402082:	75 1b                	jne    40209f <sprintf_interger+0x32f>
  402084:	eb 0c                	jmp    402092 <sprintf_interger+0x322>
  402086:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402089:	8d 50 01             	lea    0x1(%eax),%edx
  40208c:	89 55 f4             	mov    %edx,-0xc(%ebp)
  40208f:	c6 00 20             	movb   $0x20,(%eax)
  402092:	8b 55 e0             	mov    -0x20(%ebp),%edx
  402095:	8b 45 08             	mov    0x8(%ebp),%eax
  402098:	01 d0                	add    %edx,%eax
  40209a:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  40209d:	72 e7                	jb     402086 <sprintf_interger+0x316>
  40209f:	8d 85 bd fe ff ff    	lea    -0x143(%ebp),%eax
  4020a5:	89 45 ec             	mov    %eax,-0x14(%ebp)
  4020a8:	90                   	nop
  4020a9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  4020ac:	0f b6 00             	movzbl (%eax),%eax
  4020af:	84 c0                	test   %al,%al
  4020b1:	74 1e                	je     4020d1 <sprintf_interger+0x361>
  4020b3:	8b 55 ec             	mov    -0x14(%ebp),%edx
  4020b6:	8d 42 01             	lea    0x1(%edx),%eax
  4020b9:	89 45 ec             	mov    %eax,-0x14(%ebp)
  4020bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4020bf:	8d 48 01             	lea    0x1(%eax),%ecx
  4020c2:	89 4d f4             	mov    %ecx,-0xc(%ebp)
  4020c5:	0f b6 12             	movzbl (%edx),%edx
  4020c8:	88 10                	mov    %dl,(%eax)
  4020ca:	0f b6 00             	movzbl (%eax),%eax
  4020cd:	84 c0                	test   %al,%al
  4020cf:	75 d8                	jne    4020a9 <sprintf_interger+0x339>
  4020d1:	90                   	nop
  4020d2:	8b 45 f0             	mov    -0x10(%ebp),%eax
  4020d5:	0f b6 00             	movzbl (%eax),%eax
  4020d8:	84 c0                	test   %al,%al
  4020da:	74 1e                	je     4020fa <sprintf_interger+0x38a>
  4020dc:	8b 55 f0             	mov    -0x10(%ebp),%edx
  4020df:	8d 42 01             	lea    0x1(%edx),%eax
  4020e2:	89 45 f0             	mov    %eax,-0x10(%ebp)
  4020e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4020e8:	8d 48 01             	lea    0x1(%eax),%ecx
  4020eb:	89 4d f4             	mov    %ecx,-0xc(%ebp)
  4020ee:	0f b6 12             	movzbl (%edx),%edx
  4020f1:	88 10                	mov    %dl,(%eax)
  4020f3:	0f b6 00             	movzbl (%eax),%eax
  4020f6:	84 c0                	test   %al,%al
  4020f8:	75 d8                	jne    4020d2 <sprintf_interger+0x362>
  4020fa:	8b 45 0c             	mov    0xc(%ebp),%eax
  4020fd:	8b 40 20             	mov    0x20(%eax),%eax
  402100:	85 c0                	test   %eax,%eax
  402102:	74 20                	je     402124 <sprintf_interger+0x3b4>
  402104:	eb 0c                	jmp    402112 <sprintf_interger+0x3a2>
  402106:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402109:	8d 50 01             	lea    0x1(%eax),%edx
  40210c:	89 55 f4             	mov    %edx,-0xc(%ebp)
  40210f:	c6 00 20             	movb   $0x20,(%eax)
  402112:	8b 45 0c             	mov    0xc(%ebp),%eax
  402115:	8b 40 04             	mov    0x4(%eax),%eax
  402118:	89 c2                	mov    %eax,%edx
  40211a:	8b 45 08             	mov    0x8(%ebp),%eax
  40211d:	01 d0                	add    %edx,%eax
  40211f:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  402122:	72 e2                	jb     402106 <sprintf_interger+0x396>
  402124:	8b 45 0c             	mov    0xc(%ebp),%eax
  402127:	8b 40 04             	mov    0x4(%eax),%eax
  40212a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40212d:	c9                   	leave
  40212e:	c3                   	ret

0040212f <sprintf_double>:
  40212f:	55                   	push   %ebp
  402130:	89 e5                	mov    %esp,%ebp
  402132:	53                   	push   %ebx
  402133:	81 ec 24 02 00 00    	sub    $0x224,%esp
  402139:	8b 45 08             	mov    0x8(%ebp),%eax
  40213c:	89 45 f0             	mov    %eax,-0x10(%ebp)
  40213f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  402146:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  40214d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  402154:	d9 ee                	fldz
  402156:	dd 5d d8             	fstpl  -0x28(%ebp)
  402159:	8b 45 14             	mov    0x14(%ebp),%eax
  40215c:	8b 10                	mov    (%eax),%edx
  40215e:	8b 45 10             	mov    0x10(%ebp),%eax
  402161:	01 d0                	add    %edx,%eax
  402163:	dd 00                	fldl   (%eax)
  402165:	dd 5d d8             	fstpl  -0x28(%ebp)
  402168:	8b 45 14             	mov    0x14(%ebp),%eax
  40216b:	8b 00                	mov    (%eax),%eax
  40216d:	8d 50 08             	lea    0x8(%eax),%edx
  402170:	8b 45 14             	mov    0x14(%ebp),%eax
  402173:	89 10                	mov    %edx,(%eax)
  402175:	8b 45 0c             	mov    0xc(%ebp),%eax
  402178:	8b 00                	mov    (%eax),%eax
  40217a:	83 f8 ff             	cmp    $0xffffffff,%eax
  40217d:	75 09                	jne    402188 <sprintf_double+0x59>
  40217f:	8b 45 0c             	mov    0xc(%ebp),%eax
  402182:	c7 00 08 00 00 00    	movl   $0x8,(%eax)
  402188:	8b 45 0c             	mov    0xc(%ebp),%eax
  40218b:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  40218f:	0f be c0             	movsbl %al,%eax
  402192:	83 e8 45             	sub    $0x45,%eax
  402195:	83 f8 22             	cmp    $0x22,%eax
  402198:	0f 87 1b 01 00 00    	ja     4022b9 <sprintf_double+0x18a>
  40219e:	8b 04 85 a0 70 40 00 	mov    0x4070a0(,%eax,4),%eax
  4021a5:	ff e0                	jmp    *%eax
  4021a7:	8b 45 0c             	mov    0xc(%ebp),%eax
  4021aa:	8b 00                	mov    (%eax),%eax
  4021ac:	50                   	push   %eax
  4021ad:	8d 85 d8 fe ff ff    	lea    -0x128(%ebp),%eax
  4021b3:	50                   	push   %eax
  4021b4:	ff 75 dc             	push   -0x24(%ebp)
  4021b7:	ff 75 d8             	push   -0x28(%ebp)
  4021ba:	e8 e8 07 00 00       	call   4029a7 <lftoa>
  4021bf:	83 c4 10             	add    $0x10,%esp
  4021c2:	89 45 f4             	mov    %eax,-0xc(%ebp)
  4021c5:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  4021c9:	0f 85 f4 00 00 00    	jne    4022c3 <sprintf_double+0x194>
  4021cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4021d4:	e9 cf 01 00 00       	jmp    4023a8 <sprintf_double+0x279>
  4021d9:	8b 45 0c             	mov    0xc(%ebp),%eax
  4021dc:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  4021e0:	0f be d0             	movsbl %al,%edx
  4021e3:	8b 45 0c             	mov    0xc(%ebp),%eax
  4021e6:	8b 00                	mov    (%eax),%eax
  4021e8:	83 ec 0c             	sub    $0xc,%esp
  4021eb:	52                   	push   %edx
  4021ec:	50                   	push   %eax
  4021ed:	8d 85 d8 fd ff ff    	lea    -0x228(%ebp),%eax
  4021f3:	50                   	push   %eax
  4021f4:	ff 75 dc             	push   -0x24(%ebp)
  4021f7:	ff 75 d8             	push   -0x28(%ebp)
  4021fa:	e8 04 0a 00 00       	call   402c03 <exlftoa>
  4021ff:	83 c4 20             	add    $0x20,%esp
  402202:	89 45 f4             	mov    %eax,-0xc(%ebp)
  402205:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  402209:	0f 85 b7 00 00 00    	jne    4022c6 <sprintf_double+0x197>
  40220f:	b8 00 00 00 00       	mov    $0x0,%eax
  402214:	e9 8f 01 00 00       	jmp    4023a8 <sprintf_double+0x279>
  402219:	8b 45 0c             	mov    0xc(%ebp),%eax
  40221c:	8b 00                	mov    (%eax),%eax
  40221e:	50                   	push   %eax
  40221f:	8d 85 d8 fe ff ff    	lea    -0x128(%ebp),%eax
  402225:	50                   	push   %eax
  402226:	ff 75 dc             	push   -0x24(%ebp)
  402229:	ff 75 d8             	push   -0x28(%ebp)
  40222c:	e8 76 07 00 00       	call   4029a7 <lftoa>
  402231:	83 c4 10             	add    $0x10,%esp
  402234:	85 c0                	test   %eax,%eax
  402236:	75 0a                	jne    402242 <sprintf_double+0x113>
  402238:	b8 00 00 00 00       	mov    $0x0,%eax
  40223d:	e9 66 01 00 00       	jmp    4023a8 <sprintf_double+0x279>
  402242:	8b 45 0c             	mov    0xc(%ebp),%eax
  402245:	0f b6 40 08          	movzbl 0x8(%eax),%eax
  402249:	83 e8 02             	sub    $0x2,%eax
  40224c:	0f be d0             	movsbl %al,%edx
  40224f:	8b 45 0c             	mov    0xc(%ebp),%eax
  402252:	8b 00                	mov    (%eax),%eax
  402254:	83 ec 0c             	sub    $0xc,%esp
  402257:	52                   	push   %edx
  402258:	50                   	push   %eax
  402259:	8d 85 d8 fd ff ff    	lea    -0x228(%ebp),%eax
  40225f:	50                   	push   %eax
  402260:	ff 75 dc             	push   -0x24(%ebp)
  402263:	ff 75 d8             	push   -0x28(%ebp)
  402266:	e8 98 09 00 00       	call   402c03 <exlftoa>
  40226b:	83 c4 20             	add    $0x20,%esp
  40226e:	85 c0                	test   %eax,%eax
  402270:	75 0a                	jne    40227c <sprintf_double+0x14d>
  402272:	b8 00 00 00 00       	mov    $0x0,%eax
  402277:	e9 2c 01 00 00       	jmp    4023a8 <sprintf_double+0x279>
  40227c:	83 ec 0c             	sub    $0xc,%esp
  40227f:	8d 85 d8 fe ff ff    	lea    -0x128(%ebp),%eax
  402285:	50                   	push   %eax
  402286:	e8 9d 0e 00 00       	call   403128 <strlen>
  40228b:	83 c4 10             	add    $0x10,%esp
  40228e:	89 c3                	mov    %eax,%ebx
  402290:	83 ec 0c             	sub    $0xc,%esp
  402293:	8d 85 d8 fd ff ff    	lea    -0x228(%ebp),%eax
  402299:	50                   	push   %eax
  40229a:	e8 89 0e 00 00       	call   403128 <strlen>
  40229f:	83 c4 10             	add    $0x10,%esp
  4022a2:	39 c3                	cmp    %eax,%ebx
  4022a4:	7d 08                	jge    4022ae <sprintf_double+0x17f>
  4022a6:	8d 85 d8 fe ff ff    	lea    -0x128(%ebp),%eax
  4022ac:	eb 06                	jmp    4022b4 <sprintf_double+0x185>
  4022ae:	8d 85 d8 fd ff ff    	lea    -0x228(%ebp),%eax
  4022b4:	89 45 f4             	mov    %eax,-0xc(%ebp)
  4022b7:	eb 0e                	jmp    4022c7 <sprintf_double+0x198>
  4022b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4022be:	e9 e5 00 00 00       	jmp    4023a8 <sprintf_double+0x279>
  4022c3:	90                   	nop
  4022c4:	eb 01                	jmp    4022c7 <sprintf_double+0x198>
  4022c6:	90                   	nop
  4022c7:	8b 45 0c             	mov    0xc(%ebp),%eax
  4022ca:	8b 40 24             	mov    0x24(%eax),%eax
  4022cd:	85 c0                	test   %eax,%eax
  4022cf:	74 11                	je     4022e2 <sprintf_double+0x1b3>
  4022d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4022d4:	0f b6 00             	movzbl (%eax),%eax
  4022d7:	3c 2d                	cmp    $0x2d,%al
  4022d9:	74 07                	je     4022e2 <sprintf_double+0x1b3>
  4022db:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
  4022e2:	83 ec 0c             	sub    $0xc,%esp
  4022e5:	ff 75 f4             	push   -0xc(%ebp)
  4022e8:	e8 3b 0e 00 00       	call   403128 <strlen>
  4022ed:	83 c4 10             	add    $0x10,%esp
  4022f0:	8b 55 ec             	mov    -0x14(%ebp),%edx
  4022f3:	01 d0                	add    %edx,%eax
  4022f5:	89 45 e8             	mov    %eax,-0x18(%ebp)
  4022f8:	8b 45 0c             	mov    0xc(%ebp),%eax
  4022fb:	8b 40 04             	mov    0x4(%eax),%eax
  4022fe:	39 45 e8             	cmp    %eax,-0x18(%ebp)
  402301:	7e 09                	jle    40230c <sprintf_double+0x1dd>
  402303:	8b 45 0c             	mov    0xc(%ebp),%eax
  402306:	8b 55 e8             	mov    -0x18(%ebp),%edx
  402309:	89 50 04             	mov    %edx,0x4(%eax)
  40230c:	8b 45 0c             	mov    0xc(%ebp),%eax
  40230f:	8b 40 04             	mov    0x4(%eax),%eax
  402312:	2b 45 e8             	sub    -0x18(%ebp),%eax
  402315:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  402318:	8b 45 0c             	mov    0xc(%ebp),%eax
  40231b:	8b 40 20             	mov    0x20(%eax),%eax
  40231e:	85 c0                	test   %eax,%eax
  402320:	75 1b                	jne    40233d <sprintf_double+0x20e>
  402322:	eb 0c                	jmp    402330 <sprintf_double+0x201>
  402324:	8b 45 f0             	mov    -0x10(%ebp),%eax
  402327:	8d 50 01             	lea    0x1(%eax),%edx
  40232a:	89 55 f0             	mov    %edx,-0x10(%ebp)
  40232d:	c6 00 20             	movb   $0x20,(%eax)
  402330:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  402333:	8b 45 08             	mov    0x8(%ebp),%eax
  402336:	01 d0                	add    %edx,%eax
  402338:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  40233b:	72 e7                	jb     402324 <sprintf_double+0x1f5>
  40233d:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  402341:	74 0c                	je     40234f <sprintf_double+0x220>
  402343:	8b 45 f0             	mov    -0x10(%ebp),%eax
  402346:	8d 50 01             	lea    0x1(%eax),%edx
  402349:	89 55 f0             	mov    %edx,-0x10(%ebp)
  40234c:	c6 00 2b             	movb   $0x2b,(%eax)
  40234f:	90                   	nop
  402350:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402353:	0f b6 00             	movzbl (%eax),%eax
  402356:	84 c0                	test   %al,%al
  402358:	74 1e                	je     402378 <sprintf_double+0x249>
  40235a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  40235d:	8d 42 01             	lea    0x1(%edx),%eax
  402360:	89 45 f4             	mov    %eax,-0xc(%ebp)
  402363:	8b 45 f0             	mov    -0x10(%ebp),%eax
  402366:	8d 48 01             	lea    0x1(%eax),%ecx
  402369:	89 4d f0             	mov    %ecx,-0x10(%ebp)
  40236c:	0f b6 12             	movzbl (%edx),%edx
  40236f:	88 10                	mov    %dl,(%eax)
  402371:	0f b6 00             	movzbl (%eax),%eax
  402374:	84 c0                	test   %al,%al
  402376:	75 d8                	jne    402350 <sprintf_double+0x221>
  402378:	8b 45 0c             	mov    0xc(%ebp),%eax
  40237b:	8b 40 20             	mov    0x20(%eax),%eax
  40237e:	85 c0                	test   %eax,%eax
  402380:	74 20                	je     4023a2 <sprintf_double+0x273>
  402382:	eb 0c                	jmp    402390 <sprintf_double+0x261>
  402384:	8b 45 f0             	mov    -0x10(%ebp),%eax
  402387:	8d 50 01             	lea    0x1(%eax),%edx
  40238a:	89 55 f0             	mov    %edx,-0x10(%ebp)
  40238d:	c6 00 20             	movb   $0x20,(%eax)
  402390:	8b 45 0c             	mov    0xc(%ebp),%eax
  402393:	8b 40 04             	mov    0x4(%eax),%eax
  402396:	89 c2                	mov    %eax,%edx
  402398:	8b 45 08             	mov    0x8(%ebp),%eax
  40239b:	01 d0                	add    %edx,%eax
  40239d:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  4023a0:	72 e2                	jb     402384 <sprintf_double+0x255>
  4023a2:	8b 45 0c             	mov    0xc(%ebp),%eax
  4023a5:	8b 40 04             	mov    0x4(%eax),%eax
  4023a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4023ab:	c9                   	leave
  4023ac:	c3                   	ret

004023ad <_sprintf>:
  4023ad:	55                   	push   %ebp
  4023ae:	89 e5                	mov    %esp,%ebp
  4023b0:	83 ec 58             	sub    $0x58,%esp
  4023b3:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  4023ba:	8b 45 08             	mov    0x8(%ebp),%eax
  4023bd:	89 45 f4             	mov    %eax,-0xc(%ebp)
  4023c0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  4023c4:	75 0a                	jne    4023d0 <_sprintf+0x23>
  4023c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023cb:	e9 82 01 00 00       	jmp    402552 <_sprintf+0x1a5>
  4023d0:	8b 45 0c             	mov    0xc(%ebp),%eax
  4023d3:	89 45 b4             	mov    %eax,-0x4c(%ebp)
  4023d6:	8b 45 b4             	mov    -0x4c(%ebp),%eax
  4023d9:	89 45 b0             	mov    %eax,-0x50(%ebp)
  4023dc:	8b 45 b0             	mov    -0x50(%ebp),%eax
  4023df:	89 45 ac             	mov    %eax,-0x54(%ebp)
  4023e2:	e9 25 01 00 00       	jmp    40250c <_sprintf+0x15f>
  4023e7:	8b 45 b4             	mov    -0x4c(%ebp),%eax
  4023ea:	89 45 f0             	mov    %eax,-0x10(%ebp)
  4023ed:	eb 17                	jmp    402406 <_sprintf+0x59>
  4023ef:	8b 55 f0             	mov    -0x10(%ebp),%edx
  4023f2:	8d 42 01             	lea    0x1(%edx),%eax
  4023f5:	89 45 f0             	mov    %eax,-0x10(%ebp)
  4023f8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4023fb:	8d 48 01             	lea    0x1(%eax),%ecx
  4023fe:	89 4d f4             	mov    %ecx,-0xc(%ebp)
  402401:	0f b6 12             	movzbl (%edx),%edx
  402404:	88 10                	mov    %dl,(%eax)
  402406:	8b 45 b0             	mov    -0x50(%ebp),%eax
  402409:	39 45 f0             	cmp    %eax,-0x10(%ebp)
  40240c:	72 e1                	jb     4023ef <_sprintf+0x42>
  40240e:	83 ec 0c             	sub    $0xc,%esp
  402411:	8d 45 ac             	lea    -0x54(%ebp),%eax
  402414:	50                   	push   %eax
  402415:	e8 57 f5 ff ff       	call   401971 <parse_spec>
  40241a:	83 c4 10             	add    $0x10,%esp
  40241d:	0f b6 45 c0          	movzbl -0x40(%ebp),%eax
  402421:	0f be c0             	movsbl %al,%eax
  402424:	83 f8 78             	cmp    $0x78,%eax
  402427:	0f 8f de 00 00 00    	jg     40250b <_sprintf+0x15e>
  40242d:	83 f8 64             	cmp    $0x64,%eax
  402430:	7d 21                	jge    402453 <_sprintf+0xa6>
  402432:	83 f8 63             	cmp    $0x63,%eax
  402435:	74 60                	je     402497 <_sprintf+0xea>
  402437:	83 f8 63             	cmp    $0x63,%eax
  40243a:	0f 8f cb 00 00 00    	jg     40250b <_sprintf+0x15e>
  402440:	83 f8 47             	cmp    $0x47,%eax
  402443:	7f 4b                	jg     402490 <_sprintf+0xe3>
  402445:	83 f8 45             	cmp    $0x45,%eax
  402448:	0f 8d 9f 00 00 00    	jge    4024ed <_sprintf+0x140>
  40244e:	e9 b8 00 00 00       	jmp    40250b <_sprintf+0x15e>
  402453:	83 e8 64             	sub    $0x64,%eax
  402456:	ba 01 00 00 00       	mov    $0x1,%edx
  40245b:	89 c1                	mov    %eax,%ecx
  40245d:	d3 e2                	shl    %cl,%edx
  40245f:	89 d0                	mov    %edx,%eax
  402461:	89 c2                	mov    %eax,%edx
  402463:	81 e2 21 08 12 00    	and    $0x120821,%edx
  402469:	85 d2                	test   %edx,%edx
  40246b:	0f 95 c2             	setne  %dl
  40246e:	84 d2                	test   %dl,%dl
  402470:	75 5d                	jne    4024cf <_sprintf+0x122>
  402472:	89 c2                	mov    %eax,%edx
  402474:	83 e2 0e             	and    $0xe,%edx
  402477:	85 d2                	test   %edx,%edx
  402479:	0f 95 c2             	setne  %dl
  40247c:	84 d2                	test   %dl,%dl
  40247e:	75 6d                	jne    4024ed <_sprintf+0x140>
  402480:	25 00 80 00 00       	and    $0x8000,%eax
  402485:	85 c0                	test   %eax,%eax
  402487:	0f 95 c0             	setne  %al
  40248a:	84 c0                	test   %al,%al
  40248c:	75 23                	jne    4024b1 <_sprintf+0x104>
  40248e:	eb 7b                	jmp    40250b <_sprintf+0x15e>
  402490:	83 f8 58             	cmp    $0x58,%eax
  402493:	74 3a                	je     4024cf <_sprintf+0x122>
  402495:	eb 74                	jmp    40250b <_sprintf+0x15e>
  402497:	83 ec 04             	sub    $0x4,%esp
  40249a:	8d 45 ec             	lea    -0x14(%ebp),%eax
  40249d:	50                   	push   %eax
  40249e:	ff 75 10             	push   0x10(%ebp)
  4024a1:	ff 75 f4             	push   -0xc(%ebp)
  4024a4:	e8 67 f7 ff ff       	call   401c10 <sprintf_char>
  4024a9:	83 c4 10             	add    $0x10,%esp
  4024ac:	01 45 f4             	add    %eax,-0xc(%ebp)
  4024af:	eb 5b                	jmp    40250c <_sprintf+0x15f>
  4024b1:	8d 45 ec             	lea    -0x14(%ebp),%eax
  4024b4:	50                   	push   %eax
  4024b5:	ff 75 10             	push   0x10(%ebp)
  4024b8:	8d 45 ac             	lea    -0x54(%ebp),%eax
  4024bb:	83 c0 0c             	add    $0xc,%eax
  4024be:	50                   	push   %eax
  4024bf:	ff 75 f4             	push   -0xc(%ebp)
  4024c2:	e8 7c f7 ff ff       	call   401c43 <sprintf_string>
  4024c7:	83 c4 10             	add    $0x10,%esp
  4024ca:	01 45 f4             	add    %eax,-0xc(%ebp)
  4024cd:	eb 3d                	jmp    40250c <_sprintf+0x15f>
  4024cf:	8d 45 ec             	lea    -0x14(%ebp),%eax
  4024d2:	50                   	push   %eax
  4024d3:	ff 75 10             	push   0x10(%ebp)
  4024d6:	8d 45 ac             	lea    -0x54(%ebp),%eax
  4024d9:	83 c0 0c             	add    $0xc,%eax
  4024dc:	50                   	push   %eax
  4024dd:	ff 75 f4             	push   -0xc(%ebp)
  4024e0:	e8 8b f8 ff ff       	call   401d70 <sprintf_interger>
  4024e5:	83 c4 10             	add    $0x10,%esp
  4024e8:	01 45 f4             	add    %eax,-0xc(%ebp)
  4024eb:	eb 1f                	jmp    40250c <_sprintf+0x15f>
  4024ed:	8d 45 ec             	lea    -0x14(%ebp),%eax
  4024f0:	50                   	push   %eax
  4024f1:	ff 75 10             	push   0x10(%ebp)
  4024f4:	8d 45 ac             	lea    -0x54(%ebp),%eax
  4024f7:	83 c0 0c             	add    $0xc,%eax
  4024fa:	50                   	push   %eax
  4024fb:	ff 75 f4             	push   -0xc(%ebp)
  4024fe:	e8 2c fc ff ff       	call   40212f <sprintf_double>
  402503:	83 c4 10             	add    $0x10,%esp
  402506:	01 45 f4             	add    %eax,-0xc(%ebp)
  402509:	eb 01                	jmp    40250c <_sprintf+0x15f>
  40250b:	90                   	nop
  40250c:	83 ec 0c             	sub    $0xc,%esp
  40250f:	8d 45 ac             	lea    -0x54(%ebp),%eax
  402512:	50                   	push   %eax
  402513:	e8 0f f4 ff ff       	call   401927 <find_spec>
  402518:	83 c4 10             	add    $0x10,%esp
  40251b:	85 c0                	test   %eax,%eax
  40251d:	0f 89 c4 fe ff ff    	jns    4023e7 <_sprintf+0x3a>
  402523:	eb 17                	jmp    40253c <_sprintf+0x18f>
  402525:	8b 55 b4             	mov    -0x4c(%ebp),%edx
  402528:	8d 42 01             	lea    0x1(%edx),%eax
  40252b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
  40252e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402531:	8d 48 01             	lea    0x1(%eax),%ecx
  402534:	89 4d f4             	mov    %ecx,-0xc(%ebp)
  402537:	0f b6 12             	movzbl (%edx),%edx
  40253a:	88 10                	mov    %dl,(%eax)
  40253c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
  40253f:	8b 45 b0             	mov    -0x50(%ebp),%eax
  402542:	39 c2                	cmp    %eax,%edx
  402544:	72 df                	jb     402525 <_sprintf+0x178>
  402546:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402549:	c6 00 00             	movb   $0x0,(%eax)
  40254c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40254f:	2b 45 08             	sub    0x8(%ebp),%eax
  402552:	c9                   	leave
  402553:	c3                   	ret

00402554 <sprintf>:
  402554:	55                   	push   %ebp
  402555:	89 e5                	mov    %esp,%ebp
  402557:	83 ec 18             	sub    $0x18,%esp
  40255a:	8d 45 0c             	lea    0xc(%ebp),%eax
  40255d:	83 c0 04             	add    $0x4,%eax
  402560:	89 45 f4             	mov    %eax,-0xc(%ebp)
  402563:	8b 45 0c             	mov    0xc(%ebp),%eax
  402566:	83 ec 04             	sub    $0x4,%esp
  402569:	ff 75 f4             	push   -0xc(%ebp)
  40256c:	50                   	push   %eax
  40256d:	ff 75 08             	push   0x8(%ebp)
  402570:	e8 38 fe ff ff       	call   4023ad <_sprintf>
  402575:	83 c4 10             	add    $0x10,%esp
  402578:	c9                   	leave
  402579:	c3                   	ret

0040257a <printf>:
  40257a:	55                   	push   %ebp
  40257b:	89 e5                	mov    %esp,%ebp
  40257d:	81 ec 18 04 00 00    	sub    $0x418,%esp
  402583:	8d 45 0c             	lea    0xc(%ebp),%eax
  402586:	89 45 f4             	mov    %eax,-0xc(%ebp)
  402589:	8b 45 08             	mov    0x8(%ebp),%eax
  40258c:	83 ec 04             	sub    $0x4,%esp
  40258f:	ff 75 f4             	push   -0xc(%ebp)
  402592:	50                   	push   %eax
  402593:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
  402599:	50                   	push   %eax
  40259a:	e8 0e fe ff ff       	call   4023ad <_sprintf>
  40259f:	83 c4 10             	add    $0x10,%esp
  4025a2:	89 45 f0             	mov    %eax,-0x10(%ebp)
  4025a5:	83 ec 04             	sub    $0x4,%esp
  4025a8:	ff 75 f0             	push   -0x10(%ebp)
  4025ab:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
  4025b1:	50                   	push   %eax
  4025b2:	6a 01                	push   $0x1
  4025b4:	e8 86 ed ff ff       	call   40133f <write>
  4025b9:	83 c4 10             	add    $0x10,%esp
  4025bc:	90                   	nop
  4025bd:	c9                   	leave
  4025be:	c3                   	ret

004025bf <gets>:
  4025bf:	55                   	push   %ebp
  4025c0:	89 e5                	mov    %esp,%ebp
  4025c2:	83 ec 18             	sub    $0x18,%esp
  4025c5:	83 ec 04             	sub    $0x4,%esp
  4025c8:	68 00 04 00 00       	push   $0x400
  4025cd:	ff 75 08             	push   0x8(%ebp)
  4025d0:	6a 00                	push   $0x0
  4025d2:	e8 39 ed ff ff       	call   401310 <read>
  4025d7:	83 c4 10             	add    $0x10,%esp
  4025da:	89 45 f4             	mov    %eax,-0xc(%ebp)
  4025dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4025e0:	8d 50 ff             	lea    -0x1(%eax),%edx
  4025e3:	8b 45 08             	mov    0x8(%ebp),%eax
  4025e6:	01 d0                	add    %edx,%eax
  4025e8:	0f b6 00             	movzbl (%eax),%eax
  4025eb:	3c 0a                	cmp    $0xa,%al
  4025ed:	75 0e                	jne    4025fd <gets+0x3e>
  4025ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4025f2:	8d 50 ff             	lea    -0x1(%eax),%edx
  4025f5:	8b 45 08             	mov    0x8(%ebp),%eax
  4025f8:	01 d0                	add    %edx,%eax
  4025fa:	c6 00 00             	movb   $0x0,(%eax)
  4025fd:	90                   	nop
  4025fe:	c9                   	leave
  4025ff:	c3                   	ret

00402600 <_itoa>:
  402600:	55                   	push   %ebp
  402601:	89 e5                	mov    %esp,%ebp
  402603:	83 ec 10             	sub    $0x10,%esp
  402606:	8b 45 10             	mov    0x10(%ebp),%eax
  402609:	89 45 f4             	mov    %eax,-0xc(%ebp)
  40260c:	8b 45 08             	mov    0x8(%ebp),%eax
  40260f:	89 45 fc             	mov    %eax,-0x4(%ebp)
  402612:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  402619:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  40261d:	74 0c                	je     40262b <_itoa+0x2b>
  40261f:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  402623:	7e 06                	jle    40262b <_itoa+0x2b>
  402625:	83 7d 14 10          	cmpl   $0x10,0x14(%ebp)
  402629:	7e 0a                	jle    402635 <_itoa+0x35>
  40262b:	b8 00 00 00 00       	mov    $0x0,%eax
  402630:	e9 bc 00 00 00       	jmp    4026f1 <_itoa+0xf1>
  402635:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  402639:	74 0c                	je     402647 <_itoa+0x47>
  40263b:	8b 45 10             	mov    0x10(%ebp),%eax
  40263e:	8d 50 01             	lea    0x1(%eax),%edx
  402641:	89 55 10             	mov    %edx,0x10(%ebp)
  402644:	c6 00 2d             	movb   $0x2d,(%eax)
  402647:	8b 45 10             	mov    0x10(%ebp),%eax
  40264a:	89 45 f8             	mov    %eax,-0x8(%ebp)
  40264d:	8b 45 10             	mov    0x10(%ebp),%eax
  402650:	c6 00 30             	movb   $0x30,(%eax)
  402653:	eb 48                	jmp    40269d <_itoa+0x9d>
  402655:	8b 4d 14             	mov    0x14(%ebp),%ecx
  402658:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40265b:	ba 00 00 00 00       	mov    $0x0,%edx
  402660:	f7 f1                	div    %ecx
  402662:	89 d0                	mov    %edx,%eax
  402664:	88 45 f2             	mov    %al,-0xe(%ebp)
  402667:	80 7d f2 09          	cmpb   $0x9,-0xe(%ebp)
  40266b:	7f 07                	jg     402674 <_itoa+0x74>
  40266d:	ba 30 00 00 00       	mov    $0x30,%edx
  402672:	eb 05                	jmp    402679 <_itoa+0x79>
  402674:	ba 57 00 00 00       	mov    $0x57,%edx
  402679:	0f b6 45 f2          	movzbl -0xe(%ebp),%eax
  40267d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  402680:	8b 45 10             	mov    0x10(%ebp),%eax
  402683:	8d 50 01             	lea    0x1(%eax),%edx
  402686:	89 55 10             	mov    %edx,0x10(%ebp)
  402689:	89 ca                	mov    %ecx,%edx
  40268b:	88 10                	mov    %dl,(%eax)
  40268d:	8b 4d 14             	mov    0x14(%ebp),%ecx
  402690:	8b 45 fc             	mov    -0x4(%ebp),%eax
  402693:	ba 00 00 00 00       	mov    $0x0,%edx
  402698:	f7 f1                	div    %ecx
  40269a:	89 45 fc             	mov    %eax,-0x4(%ebp)
  40269d:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  4026a1:	75 b2                	jne    402655 <_itoa+0x55>
  4026a3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  4026a7:	74 08                	je     4026b1 <_itoa+0xb1>
  4026a9:	8b 45 10             	mov    0x10(%ebp),%eax
  4026ac:	c6 00 00             	movb   $0x0,(%eax)
  4026af:	eb 0a                	jmp    4026bb <_itoa+0xbb>
  4026b1:	83 45 10 01          	addl   $0x1,0x10(%ebp)
  4026b5:	8b 45 10             	mov    0x10(%ebp),%eax
  4026b8:	c6 00 00             	movb   $0x0,(%eax)
  4026bb:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  4026bf:	eb 25                	jmp    4026e6 <_itoa+0xe6>
  4026c1:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4026c4:	0f b6 00             	movzbl (%eax),%eax
  4026c7:	88 45 f3             	mov    %al,-0xd(%ebp)
  4026ca:	8b 45 10             	mov    0x10(%ebp),%eax
  4026cd:	0f b6 10             	movzbl (%eax),%edx
  4026d0:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4026d3:	88 10                	mov    %dl,(%eax)
  4026d5:	8b 45 10             	mov    0x10(%ebp),%eax
  4026d8:	0f b6 55 f3          	movzbl -0xd(%ebp),%edx
  4026dc:	88 10                	mov    %dl,(%eax)
  4026de:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  4026e2:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  4026e6:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4026e9:	3b 45 10             	cmp    0x10(%ebp),%eax
  4026ec:	72 d3                	jb     4026c1 <_itoa+0xc1>
  4026ee:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4026f1:	c9                   	leave
  4026f2:	c3                   	ret

004026f3 <itoa>:
  4026f3:	55                   	push   %ebp
  4026f4:	89 e5                	mov    %esp,%ebp
  4026f6:	83 ec 10             	sub    $0x10,%esp
  4026f9:	8b 45 08             	mov    0x8(%ebp),%eax
  4026fc:	c1 e8 1f             	shr    $0x1f,%eax
  4026ff:	89 45 fc             	mov    %eax,-0x4(%ebp)
  402702:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  402706:	74 03                	je     40270b <itoa+0x18>
  402708:	f7 5d 08             	negl   0x8(%ebp)
  40270b:	8b 45 08             	mov    0x8(%ebp),%eax
  40270e:	ff 75 10             	push   0x10(%ebp)
  402711:	ff 75 0c             	push   0xc(%ebp)
  402714:	ff 75 fc             	push   -0x4(%ebp)
  402717:	50                   	push   %eax
  402718:	e8 e3 fe ff ff       	call   402600 <_itoa>
  40271d:	83 c4 10             	add    $0x10,%esp
  402720:	c9                   	leave
  402721:	c3                   	ret

00402722 <uitoa>:
  402722:	55                   	push   %ebp
  402723:	89 e5                	mov    %esp,%ebp
  402725:	ff 75 10             	push   0x10(%ebp)
  402728:	ff 75 0c             	push   0xc(%ebp)
  40272b:	6a 00                	push   $0x0
  40272d:	ff 75 08             	push   0x8(%ebp)
  402730:	e8 cb fe ff ff       	call   402600 <_itoa>
  402735:	83 c4 10             	add    $0x10,%esp
  402738:	c9                   	leave
  402739:	c3                   	ret

0040273a <ftoa>:
  40273a:	55                   	push   %ebp
  40273b:	89 e5                	mov    %esp,%ebp
  40273d:	83 ec 38             	sub    $0x38,%esp
  402740:	8b 45 0c             	mov    0xc(%ebp),%eax
  402743:	89 45 f4             	mov    %eax,-0xc(%ebp)
  402746:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  40274d:	d9 ee                	fldz
  40274f:	d9 5d ec             	fstps  -0x14(%ebp)
  402752:	d9 ee                	fldz
  402754:	d9 5d e8             	fstps  -0x18(%ebp)
  402757:	8b 45 10             	mov    0x10(%ebp),%eax
  40275a:	89 45 e0             	mov    %eax,-0x20(%ebp)
  40275d:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  402761:	79 10                	jns    402773 <ftoa+0x39>
  402763:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  402767:	75 0a                	jne    402773 <ftoa+0x39>
  402769:	b8 00 00 00 00       	mov    $0x0,%eax
  40276e:	e9 32 02 00 00       	jmp    4029a5 <ftoa+0x26b>
  402773:	83 ec 0c             	sub    $0xc,%esp
  402776:	ff 75 08             	push   0x8(%ebp)
  402779:	e8 17 ef ff ff       	call   401695 <float_isUpOverFlow>
  40277e:	83 c4 10             	add    $0x10,%esp
  402781:	85 c0                	test   %eax,%eax
  402783:	74 39                	je     4027be <ftoa+0x84>
  402785:	83 ec 0c             	sub    $0xc,%esp
  402788:	ff 75 08             	push   0x8(%ebp)
  40278b:	e8 df ed ff ff       	call   40156f <float_getSign>
  402790:	83 c4 10             	add    $0x10,%esp
  402793:	85 c0                	test   %eax,%eax
  402795:	74 0c                	je     4027a3 <ftoa+0x69>
  402797:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40279a:	8d 50 01             	lea    0x1(%eax),%edx
  40279d:	89 55 f4             	mov    %edx,-0xc(%ebp)
  4027a0:	c6 00 2d             	movb   $0x2d,(%eax)
  4027a3:	83 ec 08             	sub    $0x8,%esp
  4027a6:	68 38 71 40 00       	push   $0x407138
  4027ab:	ff 75 f4             	push   -0xc(%ebp)
  4027ae:	e8 05 09 00 00       	call   4030b8 <strcpy>
  4027b3:	83 c4 10             	add    $0x10,%esp
  4027b6:	8b 45 0c             	mov    0xc(%ebp),%eax
  4027b9:	e9 e7 01 00 00       	jmp    4029a5 <ftoa+0x26b>
  4027be:	d9 45 08             	flds   0x8(%ebp)
  4027c1:	d9 ee                	fldz
  4027c3:	df f1                	fcomip %st(1),%st
  4027c5:	dd d8                	fstp   %st(0)
  4027c7:	76 14                	jbe    4027dd <ftoa+0xa3>
  4027c9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4027cc:	8d 50 01             	lea    0x1(%eax),%edx
  4027cf:	89 55 f4             	mov    %edx,-0xc(%ebp)
  4027d2:	c6 00 2d             	movb   $0x2d,(%eax)
  4027d5:	d9 45 08             	flds   0x8(%ebp)
  4027d8:	d9 e0                	fchs
  4027da:	d9 5d 08             	fstps  0x8(%ebp)
  4027dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4027e0:	89 45 f0             	mov    %eax,-0x10(%ebp)
  4027e3:	83 ec 0c             	sub    $0xc,%esp
  4027e6:	ff 75 08             	push   0x8(%ebp)
  4027e9:	e8 5c ee ff ff       	call   40164a <float_getRight>
  4027ee:	83 c4 10             	add    $0x10,%esp
  4027f1:	d9 5d ec             	fstps  -0x14(%ebp)
  4027f4:	83 ec 0c             	sub    $0xc,%esp
  4027f7:	ff 75 08             	push   0x8(%ebp)
  4027fa:	e8 c3 ed ff ff       	call   4015c2 <float_getLeft>
  4027ff:	83 c4 10             	add    $0x10,%esp
  402802:	d9 5d e8             	fstps  -0x18(%ebp)
  402805:	d9 45 e8             	flds   -0x18(%ebp)
  402808:	d9 ee                	fldz
  40280a:	df e9                	fucomip %st(1),%st
  40280c:	dd d8                	fstp   %st(0)
  40280e:	0f 8a 96 00 00 00    	jp     4028aa <ftoa+0x170>
  402814:	d9 45 e8             	flds   -0x18(%ebp)
  402817:	d9 ee                	fldz
  402819:	df e9                	fucomip %st(1),%st
  40281b:	dd d8                	fstp   %st(0)
  40281d:	75 0c                	jne    40282b <ftoa+0xf1>
  40281f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402822:	8d 50 01             	lea    0x1(%eax),%edx
  402825:	89 55 f4             	mov    %edx,-0xc(%ebp)
  402828:	c6 00 30             	movb   $0x30,(%eax)
  40282b:	eb 7d                	jmp    4028aa <ftoa+0x170>
  40282d:	d9 45 e8             	flds   -0x18(%ebp)
  402830:	d9 05 40 71 40 00    	flds   0x407140
  402836:	de f9                	fdivrp %st,%st(1)
  402838:	83 ec 0c             	sub    $0xc,%esp
  40283b:	8d 64 24 fc          	lea    -0x4(%esp),%esp
  40283f:	d9 1c 24             	fstps  (%esp)
  402842:	e8 03 ee ff ff       	call   40164a <float_getRight>
  402847:	83 c4 10             	add    $0x10,%esp
  40284a:	d9 5d d8             	fstps  -0x28(%ebp)
  40284d:	d9 45 d8             	flds   -0x28(%ebp)
  402850:	dd 05 48 71 40 00    	fldl   0x407148
  402856:	de c9                	fmulp  %st,%st(1)
  402858:	dd 05 50 71 40 00    	fldl   0x407150
  40285e:	de c1                	faddp  %st,%st(1)
  402860:	d9 7d d6             	fnstcw -0x2a(%ebp)
  402863:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
  402867:	80 cc 0c             	or     $0xc,%ah
  40286a:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
  40286e:	d9 6d d4             	fldcw  -0x2c(%ebp)
  402871:	df 5d d2             	fistps -0x2e(%ebp)
  402874:	d9 6d d6             	fldcw  -0x2a(%ebp)
  402877:	0f b6 45 d2          	movzbl -0x2e(%ebp),%eax
  40287b:	8d 48 30             	lea    0x30(%eax),%ecx
  40287e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402881:	8d 50 01             	lea    0x1(%eax),%edx
  402884:	89 55 f4             	mov    %edx,-0xc(%ebp)
  402887:	89 ca                	mov    %ecx,%edx
  402889:	88 10                	mov    %dl,(%eax)
  40288b:	d9 45 e8             	flds   -0x18(%ebp)
  40288e:	d9 05 40 71 40 00    	flds   0x407140
  402894:	de f9                	fdivrp %st,%st(1)
  402896:	d9 5d e8             	fstps  -0x18(%ebp)
  402899:	83 ec 0c             	sub    $0xc,%esp
  40289c:	ff 75 e8             	push   -0x18(%ebp)
  40289f:	e8 1e ed ff ff       	call   4015c2 <float_getLeft>
  4028a4:	83 c4 10             	add    $0x10,%esp
  4028a7:	d9 5d e8             	fstps  -0x18(%ebp)
  4028aa:	d9 e8                	fld1
  4028ac:	d9 45 e8             	flds   -0x18(%ebp)
  4028af:	df f1                	fcomip %st(1),%st
  4028b1:	dd d8                	fstp   %st(0)
  4028b3:	0f 83 74 ff ff ff    	jae    40282d <ftoa+0xf3>
  4028b9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4028bc:	8d 50 ff             	lea    -0x1(%eax),%edx
  4028bf:	89 55 f4             	mov    %edx,-0xc(%ebp)
  4028c2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  4028c5:	eb 25                	jmp    4028ec <ftoa+0x1b2>
  4028c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4028ca:	0f b6 00             	movzbl (%eax),%eax
  4028cd:	88 45 df             	mov    %al,-0x21(%ebp)
  4028d0:	8b 45 f0             	mov    -0x10(%ebp),%eax
  4028d3:	0f b6 10             	movzbl (%eax),%edx
  4028d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4028d9:	88 10                	mov    %dl,(%eax)
  4028db:	8b 45 f0             	mov    -0x10(%ebp),%eax
  4028de:	0f b6 55 df          	movzbl -0x21(%ebp),%edx
  4028e2:	88 10                	mov    %dl,(%eax)
  4028e4:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  4028e8:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  4028ec:	8b 45 f0             	mov    -0x10(%ebp),%eax
  4028ef:	3b 45 f4             	cmp    -0xc(%ebp),%eax
  4028f2:	72 d3                	jb     4028c7 <ftoa+0x18d>
  4028f4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  4028f7:	c6 00 2e             	movb   $0x2e,(%eax)
  4028fa:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  4028fe:	7e 08                	jle    402908 <ftoa+0x1ce>
  402900:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  402903:	83 c0 01             	add    $0x1,%eax
  402906:	eb 03                	jmp    40290b <ftoa+0x1d1>
  402908:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  40290b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  40290e:	eb 56                	jmp    402966 <ftoa+0x22c>
  402910:	d9 45 ec             	flds   -0x14(%ebp)
  402913:	dd 05 48 71 40 00    	fldl   0x407148
  402919:	de c9                	fmulp  %st,%st(1)
  40291b:	d9 7d d6             	fnstcw -0x2a(%ebp)
  40291e:	0f b7 45 d6          	movzwl -0x2a(%ebp),%eax
  402922:	80 cc 0c             	or     $0xc,%ah
  402925:	66 89 45 d4          	mov    %ax,-0x2c(%ebp)
  402929:	d9 6d d4             	fldcw  -0x2c(%ebp)
  40292c:	df 5d d2             	fistps -0x2e(%ebp)
  40292f:	d9 6d d6             	fldcw  -0x2a(%ebp)
  402932:	0f b6 45 d2          	movzbl -0x2e(%ebp),%eax
  402936:	8d 48 30             	lea    0x30(%eax),%ecx
  402939:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40293c:	8d 50 01             	lea    0x1(%eax),%edx
  40293f:	89 55 f4             	mov    %edx,-0xc(%ebp)
  402942:	89 ca                	mov    %ecx,%edx
  402944:	88 10                	mov    %dl,(%eax)
  402946:	d9 45 ec             	flds   -0x14(%ebp)
  402949:	d9 05 40 71 40 00    	flds   0x407140
  40294f:	de c9                	fmulp  %st,%st(1)
  402951:	83 ec 0c             	sub    $0xc,%esp
  402954:	8d 64 24 fc          	lea    -0x4(%esp),%esp
  402958:	d9 1c 24             	fstps  (%esp)
  40295b:	e8 ea ec ff ff       	call   40164a <float_getRight>
  402960:	83 c4 10             	add    $0x10,%esp
  402963:	d9 5d ec             	fstps  -0x14(%ebp)
  402966:	8b 45 10             	mov    0x10(%ebp),%eax
  402969:	8d 50 ff             	lea    -0x1(%eax),%edx
  40296c:	89 55 10             	mov    %edx,0x10(%ebp)
  40296f:	85 c0                	test   %eax,%eax
  402971:	75 9d                	jne    402910 <ftoa+0x1d6>
  402973:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
  402977:	74 23                	je     40299c <ftoa+0x262>
  402979:	d9 05 58 71 40 00    	flds   0x407158
  40297f:	d9 45 ec             	flds   -0x14(%ebp)
  402982:	df f1                	fcomip %st(1),%st
  402984:	dd d8                	fstp   %st(0)
  402986:	72 14                	jb     40299c <ftoa+0x262>
  402988:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40298b:	83 e8 01             	sub    $0x1,%eax
  40298e:	0f b6 00             	movzbl (%eax),%eax
  402991:	8d 50 01             	lea    0x1(%eax),%edx
  402994:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402997:	83 e8 01             	sub    $0x1,%eax
  40299a:	88 10                	mov    %dl,(%eax)
  40299c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40299f:	c6 00 00             	movb   $0x0,(%eax)
  4029a2:	8b 45 0c             	mov    0xc(%ebp),%eax
  4029a5:	c9                   	leave
  4029a6:	c3                   	ret

004029a7 <lftoa>:
  4029a7:	55                   	push   %ebp
  4029a8:	89 e5                	mov    %esp,%ebp
  4029aa:	83 ec 48             	sub    $0x48,%esp
  4029ad:	8b 45 08             	mov    0x8(%ebp),%eax
  4029b0:	89 45 c0             	mov    %eax,-0x40(%ebp)
  4029b3:	8b 45 0c             	mov    0xc(%ebp),%eax
  4029b6:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  4029b9:	8b 45 10             	mov    0x10(%ebp),%eax
  4029bc:	89 45 f4             	mov    %eax,-0xc(%ebp)
  4029bf:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  4029c6:	d9 ee                	fldz
  4029c8:	dd 5d e8             	fstpl  -0x18(%ebp)
  4029cb:	d9 ee                	fldz
  4029cd:	dd 5d e0             	fstpl  -0x20(%ebp)
  4029d0:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  4029d4:	79 10                	jns    4029e6 <lftoa+0x3f>
  4029d6:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  4029da:	75 0a                	jne    4029e6 <lftoa+0x3f>
  4029dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4029e1:	e9 1b 02 00 00       	jmp    402c01 <lftoa+0x25a>
  4029e6:	83 ec 08             	sub    $0x8,%esp
  4029e9:	ff 75 c4             	push   -0x3c(%ebp)
  4029ec:	ff 75 c0             	push   -0x40(%ebp)
  4029ef:	e8 10 e8 ff ff       	call   401204 <double_isUpOverFlow>
  4029f4:	83 c4 10             	add    $0x10,%esp
  4029f7:	85 c0                	test   %eax,%eax
  4029f9:	74 3c                	je     402a37 <lftoa+0x90>
  4029fb:	83 ec 08             	sub    $0x8,%esp
  4029fe:	ff 75 c4             	push   -0x3c(%ebp)
  402a01:	ff 75 c0             	push   -0x40(%ebp)
  402a04:	e8 f7 e5 ff ff       	call   401000 <double_getSign>
  402a09:	83 c4 10             	add    $0x10,%esp
  402a0c:	85 c0                	test   %eax,%eax
  402a0e:	74 0c                	je     402a1c <lftoa+0x75>
  402a10:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402a13:	8d 50 01             	lea    0x1(%eax),%edx
  402a16:	89 55 f4             	mov    %edx,-0xc(%ebp)
  402a19:	c6 00 2d             	movb   $0x2d,(%eax)
  402a1c:	83 ec 08             	sub    $0x8,%esp
  402a1f:	68 38 71 40 00       	push   $0x407138
  402a24:	ff 75 f4             	push   -0xc(%ebp)
  402a27:	e8 8c 06 00 00       	call   4030b8 <strcpy>
  402a2c:	83 c4 10             	add    $0x10,%esp
  402a2f:	8b 45 10             	mov    0x10(%ebp),%eax
  402a32:	e9 ca 01 00 00       	jmp    402c01 <lftoa+0x25a>
  402a37:	dd 45 c0             	fldl   -0x40(%ebp)
  402a3a:	d9 ee                	fldz
  402a3c:	df f1                	fcomip %st(1),%st
  402a3e:	dd d8                	fstp   %st(0)
  402a40:	76 14                	jbe    402a56 <lftoa+0xaf>
  402a42:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402a45:	8d 50 01             	lea    0x1(%eax),%edx
  402a48:	89 55 f4             	mov    %edx,-0xc(%ebp)
  402a4b:	c6 00 2d             	movb   $0x2d,(%eax)
  402a4e:	dd 45 c0             	fldl   -0x40(%ebp)
  402a51:	d9 e0                	fchs
  402a53:	dd 5d c0             	fstpl  -0x40(%ebp)
  402a56:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402a59:	89 45 f0             	mov    %eax,-0x10(%ebp)
  402a5c:	83 ec 08             	sub    $0x8,%esp
  402a5f:	ff 75 c4             	push   -0x3c(%ebp)
  402a62:	ff 75 c0             	push   -0x40(%ebp)
  402a65:	e8 2c e7 ff ff       	call   401196 <double_getRight>
  402a6a:	83 c4 10             	add    $0x10,%esp
  402a6d:	dd 5d e8             	fstpl  -0x18(%ebp)
  402a70:	83 ec 08             	sub    $0x8,%esp
  402a73:	ff 75 c4             	push   -0x3c(%ebp)
  402a76:	ff 75 c0             	push   -0x40(%ebp)
  402a79:	e8 24 e6 ff ff       	call   4010a2 <double_getLeft>
  402a7e:	83 c4 10             	add    $0x10,%esp
  402a81:	dd 5d e0             	fstpl  -0x20(%ebp)
  402a84:	dd 45 e0             	fldl   -0x20(%ebp)
  402a87:	d9 ee                	fldz
  402a89:	df e9                	fucomip %st(1),%st
  402a8b:	dd d8                	fstp   %st(0)
  402a8d:	0f 8a 9c 00 00 00    	jp     402b2f <lftoa+0x188>
  402a93:	dd 45 e0             	fldl   -0x20(%ebp)
  402a96:	d9 ee                	fldz
  402a98:	df e9                	fucomip %st(1),%st
  402a9a:	dd d8                	fstp   %st(0)
  402a9c:	75 0c                	jne    402aaa <lftoa+0x103>
  402a9e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402aa1:	8d 50 01             	lea    0x1(%eax),%edx
  402aa4:	89 55 f4             	mov    %edx,-0xc(%ebp)
  402aa7:	c6 00 30             	movb   $0x30,(%eax)
  402aaa:	e9 80 00 00 00       	jmp    402b2f <lftoa+0x188>
  402aaf:	dd 45 e0             	fldl   -0x20(%ebp)
  402ab2:	dd 05 48 71 40 00    	fldl   0x407148
  402ab8:	de f9                	fdivrp %st,%st(1)
  402aba:	83 ec 08             	sub    $0x8,%esp
  402abd:	8d 64 24 f8          	lea    -0x8(%esp),%esp
  402ac1:	dd 1c 24             	fstpl  (%esp)
  402ac4:	e8 cd e6 ff ff       	call   401196 <double_getRight>
  402ac9:	83 c4 10             	add    $0x10,%esp
  402acc:	dd 5d d0             	fstpl  -0x30(%ebp)
  402acf:	dd 45 d0             	fldl   -0x30(%ebp)
  402ad2:	dd 05 48 71 40 00    	fldl   0x407148
  402ad8:	de c9                	fmulp  %st,%st(1)
  402ada:	dd 05 50 71 40 00    	fldl   0x407150
  402ae0:	de c1                	faddp  %st,%st(1)
  402ae2:	d9 7d be             	fnstcw -0x42(%ebp)
  402ae5:	0f b7 45 be          	movzwl -0x42(%ebp),%eax
  402ae9:	80 cc 0c             	or     $0xc,%ah
  402aec:	66 89 45 bc          	mov    %ax,-0x44(%ebp)
  402af0:	d9 6d bc             	fldcw  -0x44(%ebp)
  402af3:	df 5d ba             	fistps -0x46(%ebp)
  402af6:	d9 6d be             	fldcw  -0x42(%ebp)
  402af9:	0f b6 45 ba          	movzbl -0x46(%ebp),%eax
  402afd:	8d 48 30             	lea    0x30(%eax),%ecx
  402b00:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402b03:	8d 50 01             	lea    0x1(%eax),%edx
  402b06:	89 55 f4             	mov    %edx,-0xc(%ebp)
  402b09:	89 ca                	mov    %ecx,%edx
  402b0b:	88 10                	mov    %dl,(%eax)
  402b0d:	dd 45 e0             	fldl   -0x20(%ebp)
  402b10:	dd 05 48 71 40 00    	fldl   0x407148
  402b16:	de f9                	fdivrp %st,%st(1)
  402b18:	dd 5d e0             	fstpl  -0x20(%ebp)
  402b1b:	83 ec 08             	sub    $0x8,%esp
  402b1e:	ff 75 e4             	push   -0x1c(%ebp)
  402b21:	ff 75 e0             	push   -0x20(%ebp)
  402b24:	e8 79 e5 ff ff       	call   4010a2 <double_getLeft>
  402b29:	83 c4 10             	add    $0x10,%esp
  402b2c:	dd 5d e0             	fstpl  -0x20(%ebp)
  402b2f:	d9 e8                	fld1
  402b31:	dd 45 e0             	fldl   -0x20(%ebp)
  402b34:	df f1                	fcomip %st(1),%st
  402b36:	dd d8                	fstp   %st(0)
  402b38:	0f 83 71 ff ff ff    	jae    402aaf <lftoa+0x108>
  402b3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402b41:	8d 50 ff             	lea    -0x1(%eax),%edx
  402b44:	89 55 f4             	mov    %edx,-0xc(%ebp)
  402b47:	89 45 dc             	mov    %eax,-0x24(%ebp)
  402b4a:	eb 25                	jmp    402b71 <lftoa+0x1ca>
  402b4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402b4f:	0f b6 00             	movzbl (%eax),%eax
  402b52:	88 45 db             	mov    %al,-0x25(%ebp)
  402b55:	8b 45 f0             	mov    -0x10(%ebp),%eax
  402b58:	0f b6 10             	movzbl (%eax),%edx
  402b5b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402b5e:	88 10                	mov    %dl,(%eax)
  402b60:	8b 45 f0             	mov    -0x10(%ebp),%eax
  402b63:	0f b6 55 db          	movzbl -0x25(%ebp),%edx
  402b67:	88 10                	mov    %dl,(%eax)
  402b69:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  402b6d:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  402b71:	8b 45 f0             	mov    -0x10(%ebp),%eax
  402b74:	3b 45 f4             	cmp    -0xc(%ebp),%eax
  402b77:	72 d3                	jb     402b4c <lftoa+0x1a5>
  402b79:	8b 45 dc             	mov    -0x24(%ebp),%eax
  402b7c:	c6 00 2e             	movb   $0x2e,(%eax)
  402b7f:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  402b83:	7e 08                	jle    402b8d <lftoa+0x1e6>
  402b85:	8b 45 dc             	mov    -0x24(%ebp),%eax
  402b88:	83 c0 01             	add    $0x1,%eax
  402b8b:	eb 03                	jmp    402b90 <lftoa+0x1e9>
  402b8d:	8b 45 dc             	mov    -0x24(%ebp),%eax
  402b90:	89 45 f4             	mov    %eax,-0xc(%ebp)
  402b93:	eb 56                	jmp    402beb <lftoa+0x244>
  402b95:	dd 45 e8             	fldl   -0x18(%ebp)
  402b98:	dd 05 48 71 40 00    	fldl   0x407148
  402b9e:	de c9                	fmulp  %st,%st(1)
  402ba0:	d9 7d be             	fnstcw -0x42(%ebp)
  402ba3:	0f b7 45 be          	movzwl -0x42(%ebp),%eax
  402ba7:	80 cc 0c             	or     $0xc,%ah
  402baa:	66 89 45 bc          	mov    %ax,-0x44(%ebp)
  402bae:	d9 6d bc             	fldcw  -0x44(%ebp)
  402bb1:	df 5d ba             	fistps -0x46(%ebp)
  402bb4:	d9 6d be             	fldcw  -0x42(%ebp)
  402bb7:	0f b6 45 ba          	movzbl -0x46(%ebp),%eax
  402bbb:	8d 48 30             	lea    0x30(%eax),%ecx
  402bbe:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402bc1:	8d 50 01             	lea    0x1(%eax),%edx
  402bc4:	89 55 f4             	mov    %edx,-0xc(%ebp)
  402bc7:	89 ca                	mov    %ecx,%edx
  402bc9:	88 10                	mov    %dl,(%eax)
  402bcb:	dd 45 e8             	fldl   -0x18(%ebp)
  402bce:	dd 05 48 71 40 00    	fldl   0x407148
  402bd4:	de c9                	fmulp  %st,%st(1)
  402bd6:	83 ec 08             	sub    $0x8,%esp
  402bd9:	8d 64 24 f8          	lea    -0x8(%esp),%esp
  402bdd:	dd 1c 24             	fstpl  (%esp)
  402be0:	e8 b1 e5 ff ff       	call   401196 <double_getRight>
  402be5:	83 c4 10             	add    $0x10,%esp
  402be8:	dd 5d e8             	fstpl  -0x18(%ebp)
  402beb:	8b 45 14             	mov    0x14(%ebp),%eax
  402bee:	8d 50 ff             	lea    -0x1(%eax),%edx
  402bf1:	89 55 14             	mov    %edx,0x14(%ebp)
  402bf4:	85 c0                	test   %eax,%eax
  402bf6:	75 9d                	jne    402b95 <lftoa+0x1ee>
  402bf8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402bfb:	c6 00 00             	movb   $0x0,(%eax)
  402bfe:	8b 45 10             	mov    0x10(%ebp),%eax
  402c01:	c9                   	leave
  402c02:	c3                   	ret

00402c03 <exlftoa>:
  402c03:	55                   	push   %ebp
  402c04:	89 e5                	mov    %esp,%ebp
  402c06:	83 ec 78             	sub    $0x78,%esp
  402c09:	8b 55 18             	mov    0x18(%ebp),%edx
  402c0c:	8b 45 08             	mov    0x8(%ebp),%eax
  402c0f:	89 45 a0             	mov    %eax,-0x60(%ebp)
  402c12:	8b 45 0c             	mov    0xc(%ebp),%eax
  402c15:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  402c18:	89 d0                	mov    %edx,%eax
  402c1a:	88 45 9c             	mov    %al,-0x64(%ebp)
  402c1d:	8d 45 ae             	lea    -0x52(%ebp),%eax
  402c20:	89 45 f4             	mov    %eax,-0xc(%ebp)
  402c23:	8b 45 10             	mov    0x10(%ebp),%eax
  402c26:	89 45 ec             	mov    %eax,-0x14(%ebp)
  402c29:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  402c30:	d9 ee                	fldz
  402c32:	dd 5d d8             	fstpl  -0x28(%ebp)
  402c35:	d9 ee                	fldz
  402c37:	dd 5d d0             	fstpl  -0x30(%ebp)
  402c3a:	8b 45 14             	mov    0x14(%ebp),%eax
  402c3d:	89 45 cc             	mov    %eax,-0x34(%ebp)
  402c40:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
  402c47:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  402c4b:	79 10                	jns    402c5d <exlftoa+0x5a>
  402c4d:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  402c51:	75 0a                	jne    402c5d <exlftoa+0x5a>
  402c53:	b8 00 00 00 00       	mov    $0x0,%eax
  402c58:	e9 fa 03 00 00       	jmp    403057 <exlftoa+0x454>
  402c5d:	83 ec 08             	sub    $0x8,%esp
  402c60:	ff 75 a4             	push   -0x5c(%ebp)
  402c63:	ff 75 a0             	push   -0x60(%ebp)
  402c66:	e8 99 e5 ff ff       	call   401204 <double_isUpOverFlow>
  402c6b:	83 c4 10             	add    $0x10,%esp
  402c6e:	85 c0                	test   %eax,%eax
  402c70:	74 3c                	je     402cae <exlftoa+0xab>
  402c72:	83 ec 08             	sub    $0x8,%esp
  402c75:	ff 75 a4             	push   -0x5c(%ebp)
  402c78:	ff 75 a0             	push   -0x60(%ebp)
  402c7b:	e8 80 e3 ff ff       	call   401000 <double_getSign>
  402c80:	83 c4 10             	add    $0x10,%esp
  402c83:	85 c0                	test   %eax,%eax
  402c85:	74 0c                	je     402c93 <exlftoa+0x90>
  402c87:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402c8a:	8d 50 01             	lea    0x1(%eax),%edx
  402c8d:	89 55 ec             	mov    %edx,-0x14(%ebp)
  402c90:	c6 00 2d             	movb   $0x2d,(%eax)
  402c93:	83 ec 08             	sub    $0x8,%esp
  402c96:	68 38 71 40 00       	push   $0x407138
  402c9b:	ff 75 ec             	push   -0x14(%ebp)
  402c9e:	e8 15 04 00 00       	call   4030b8 <strcpy>
  402ca3:	83 c4 10             	add    $0x10,%esp
  402ca6:	8b 45 10             	mov    0x10(%ebp),%eax
  402ca9:	e9 a9 03 00 00       	jmp    403057 <exlftoa+0x454>
  402cae:	dd 45 a0             	fldl   -0x60(%ebp)
  402cb1:	d9 ee                	fldz
  402cb3:	df f1                	fcomip %st(1),%st
  402cb5:	dd d8                	fstp   %st(0)
  402cb7:	76 14                	jbe    402ccd <exlftoa+0xca>
  402cb9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402cbc:	8d 50 01             	lea    0x1(%eax),%edx
  402cbf:	89 55 ec             	mov    %edx,-0x14(%ebp)
  402cc2:	c6 00 2d             	movb   $0x2d,(%eax)
  402cc5:	dd 45 a0             	fldl   -0x60(%ebp)
  402cc8:	d9 e0                	fchs
  402cca:	dd 5d a0             	fstpl  -0x60(%ebp)
  402ccd:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402cd0:	89 45 e8             	mov    %eax,-0x18(%ebp)
  402cd3:	83 ec 08             	sub    $0x8,%esp
  402cd6:	ff 75 a4             	push   -0x5c(%ebp)
  402cd9:	ff 75 a0             	push   -0x60(%ebp)
  402cdc:	e8 b5 e4 ff ff       	call   401196 <double_getRight>
  402ce1:	83 c4 10             	add    $0x10,%esp
  402ce4:	dd 5d d8             	fstpl  -0x28(%ebp)
  402ce7:	83 ec 08             	sub    $0x8,%esp
  402cea:	ff 75 a4             	push   -0x5c(%ebp)
  402ced:	ff 75 a0             	push   -0x60(%ebp)
  402cf0:	e8 ad e3 ff ff       	call   4010a2 <double_getLeft>
  402cf5:	83 c4 10             	add    $0x10,%esp
  402cf8:	dd 5d d0             	fstpl  -0x30(%ebp)
  402cfb:	dd 45 d0             	fldl   -0x30(%ebp)
  402cfe:	d9 e8                	fld1
  402d00:	df f1                	fcomip %st(1),%st
  402d02:	dd d8                	fstp   %st(0)
  402d04:	0f 86 a3 00 00 00    	jbe    402dad <exlftoa+0x1aa>
  402d0a:	dd 45 a0             	fldl   -0x60(%ebp)
  402d0d:	d9 ee                	fldz
  402d0f:	df e9                	fucomip %st(1),%st
  402d11:	dd d8                	fstp   %st(0)
  402d13:	7a 23                	jp     402d38 <exlftoa+0x135>
  402d15:	dd 45 a0             	fldl   -0x60(%ebp)
  402d18:	d9 ee                	fldz
  402d1a:	df e9                	fucomip %st(1),%st
  402d1c:	dd d8                	fstp   %st(0)
  402d1e:	0f 84 89 00 00 00    	je     402dad <exlftoa+0x1aa>
  402d24:	eb 12                	jmp    402d38 <exlftoa+0x135>
  402d26:	dd 45 d8             	fldl   -0x28(%ebp)
  402d29:	dd 05 48 71 40 00    	fldl   0x407148
  402d2f:	de c9                	fmulp  %st,%st(1)
  402d31:	dd 5d d8             	fstpl  -0x28(%ebp)
  402d34:	83 6d c8 01          	subl   $0x1,-0x38(%ebp)
  402d38:	dd 45 d8             	fldl   -0x28(%ebp)
  402d3b:	d9 e8                	fld1
  402d3d:	df f1                	fcomip %st(1),%st
  402d3f:	dd d8                	fstp   %st(0)
  402d41:	77 e3                	ja     402d26 <exlftoa+0x123>
  402d43:	83 ec 08             	sub    $0x8,%esp
  402d46:	ff 75 dc             	push   -0x24(%ebp)
  402d49:	ff 75 d8             	push   -0x28(%ebp)
  402d4c:	e8 51 e3 ff ff       	call   4010a2 <double_getLeft>
  402d51:	83 c4 10             	add    $0x10,%esp
  402d54:	dd 5d d0             	fstpl  -0x30(%ebp)
  402d57:	83 ec 08             	sub    $0x8,%esp
  402d5a:	ff 75 dc             	push   -0x24(%ebp)
  402d5d:	ff 75 d8             	push   -0x28(%ebp)
  402d60:	e8 31 e4 ff ff       	call   401196 <double_getRight>
  402d65:	83 c4 10             	add    $0x10,%esp
  402d68:	dd 5d d8             	fstpl  -0x28(%ebp)
  402d6b:	dd 45 d0             	fldl   -0x30(%ebp)
  402d6e:	d9 7d 9e             	fnstcw -0x62(%ebp)
  402d71:	0f b7 45 9e          	movzwl -0x62(%ebp),%eax
  402d75:	80 cc 0c             	or     $0xc,%ah
  402d78:	66 89 45 9a          	mov    %ax,-0x66(%ebp)
  402d7c:	d9 6d 9a             	fldcw  -0x66(%ebp)
  402d7f:	db 5d 94             	fistpl -0x6c(%ebp)
  402d82:	d9 6d 9e             	fldcw  -0x62(%ebp)
  402d85:	0f b6 45 94          	movzbl -0x6c(%ebp),%eax
  402d89:	8d 48 30             	lea    0x30(%eax),%ecx
  402d8c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402d8f:	8d 50 01             	lea    0x1(%eax),%edx
  402d92:	89 55 ec             	mov    %edx,-0x14(%ebp)
  402d95:	89 ca                	mov    %ecx,%edx
  402d97:	88 10                	mov    %dl,(%eax)
  402d99:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402d9c:	c6 00 2e             	movb   $0x2e,(%eax)
  402d9f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402da2:	83 c0 01             	add    $0x1,%eax
  402da5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  402da8:	e9 8a 01 00 00       	jmp    402f37 <exlftoa+0x334>
  402dad:	dd 45 a0             	fldl   -0x60(%ebp)
  402db0:	d9 ee                	fldz
  402db2:	df e9                	fucomip %st(1),%st
  402db4:	dd d8                	fstp   %st(0)
  402db6:	7a 2b                	jp     402de3 <exlftoa+0x1e0>
  402db8:	dd 45 a0             	fldl   -0x60(%ebp)
  402dbb:	d9 ee                	fldz
  402dbd:	df e9                	fucomip %st(1),%st
  402dbf:	dd d8                	fstp   %st(0)
  402dc1:	75 20                	jne    402de3 <exlftoa+0x1e0>
  402dc3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402dc6:	8d 50 01             	lea    0x1(%eax),%edx
  402dc9:	89 55 ec             	mov    %edx,-0x14(%ebp)
  402dcc:	c6 00 30             	movb   $0x30,(%eax)
  402dcf:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402dd2:	c6 00 2e             	movb   $0x2e,(%eax)
  402dd5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402dd8:	83 c0 01             	add    $0x1,%eax
  402ddb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  402dde:	e9 54 01 00 00       	jmp    402f37 <exlftoa+0x334>
  402de3:	8b 45 e8             	mov    -0x18(%ebp),%eax
  402de6:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  402de9:	e9 84 00 00 00       	jmp    402e72 <exlftoa+0x26f>
  402dee:	dd 45 d0             	fldl   -0x30(%ebp)
  402df1:	dd 05 48 71 40 00    	fldl   0x407148
  402df7:	de f9                	fdivrp %st,%st(1)
  402df9:	83 ec 08             	sub    $0x8,%esp
  402dfc:	8d 64 24 f8          	lea    -0x8(%esp),%esp
  402e00:	dd 1c 24             	fstpl  (%esp)
  402e03:	e8 8e e3 ff ff       	call   401196 <double_getRight>
  402e08:	83 c4 10             	add    $0x10,%esp
  402e0b:	dd 5d b8             	fstpl  -0x48(%ebp)
  402e0e:	dd 45 b8             	fldl   -0x48(%ebp)
  402e11:	dd 05 48 71 40 00    	fldl   0x407148
  402e17:	de c9                	fmulp  %st,%st(1)
  402e19:	dd 05 50 71 40 00    	fldl   0x407150
  402e1f:	de c1                	faddp  %st,%st(1)
  402e21:	d9 7d 9e             	fnstcw -0x62(%ebp)
  402e24:	0f b7 45 9e          	movzwl -0x62(%ebp),%eax
  402e28:	80 cc 0c             	or     $0xc,%ah
  402e2b:	66 89 45 9a          	mov    %ax,-0x66(%ebp)
  402e2f:	d9 6d 9a             	fldcw  -0x66(%ebp)
  402e32:	df 5d 94             	fistps -0x6c(%ebp)
  402e35:	d9 6d 9e             	fldcw  -0x62(%ebp)
  402e38:	0f b6 45 94          	movzbl -0x6c(%ebp),%eax
  402e3c:	8d 48 30             	lea    0x30(%eax),%ecx
  402e3f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402e42:	8d 50 01             	lea    0x1(%eax),%edx
  402e45:	89 55 ec             	mov    %edx,-0x14(%ebp)
  402e48:	89 ca                	mov    %ecx,%edx
  402e4a:	88 10                	mov    %dl,(%eax)
  402e4c:	dd 45 d0             	fldl   -0x30(%ebp)
  402e4f:	dd 05 48 71 40 00    	fldl   0x407148
  402e55:	de f9                	fdivrp %st,%st(1)
  402e57:	dd 5d d0             	fstpl  -0x30(%ebp)
  402e5a:	83 ec 08             	sub    $0x8,%esp
  402e5d:	ff 75 d4             	push   -0x2c(%ebp)
  402e60:	ff 75 d0             	push   -0x30(%ebp)
  402e63:	e8 3a e2 ff ff       	call   4010a2 <double_getLeft>
  402e68:	83 c4 10             	add    $0x10,%esp
  402e6b:	dd 5d d0             	fstpl  -0x30(%ebp)
  402e6e:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
  402e72:	d9 e8                	fld1
  402e74:	dd 45 d0             	fldl   -0x30(%ebp)
  402e77:	df f1                	fcomip %st(1),%st
  402e79:	dd d8                	fstp   %st(0)
  402e7b:	0f 83 6d ff ff ff    	jae    402dee <exlftoa+0x1eb>
  402e81:	83 6d c8 01          	subl   $0x1,-0x38(%ebp)
  402e85:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402e88:	8d 50 ff             	lea    -0x1(%eax),%edx
  402e8b:	89 55 ec             	mov    %edx,-0x14(%ebp)
  402e8e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  402e91:	eb 25                	jmp    402eb8 <exlftoa+0x2b5>
  402e93:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402e96:	0f b6 00             	movzbl (%eax),%eax
  402e99:	88 45 c3             	mov    %al,-0x3d(%ebp)
  402e9c:	8b 45 e8             	mov    -0x18(%ebp),%eax
  402e9f:	0f b6 10             	movzbl (%eax),%edx
  402ea2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402ea5:	88 10                	mov    %dl,(%eax)
  402ea7:	8b 45 e8             	mov    -0x18(%ebp),%eax
  402eaa:	0f b6 55 c3          	movzbl -0x3d(%ebp),%edx
  402eae:	88 10                	mov    %dl,(%eax)
  402eb0:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
  402eb4:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
  402eb8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  402ebb:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  402ebe:	72 d3                	jb     402e93 <exlftoa+0x290>
  402ec0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  402ec3:	89 45 ec             	mov    %eax,-0x14(%ebp)
  402ec6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  402ec9:	83 e8 01             	sub    $0x1,%eax
  402ecc:	89 45 e8             	mov    %eax,-0x18(%ebp)
  402ecf:	eb 17                	jmp    402ee8 <exlftoa+0x2e5>
  402ed1:	8b 55 e8             	mov    -0x18(%ebp),%edx
  402ed4:	8d 42 ff             	lea    -0x1(%edx),%eax
  402ed7:	89 45 e8             	mov    %eax,-0x18(%ebp)
  402eda:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402edd:	8d 48 ff             	lea    -0x1(%eax),%ecx
  402ee0:	89 4d ec             	mov    %ecx,-0x14(%ebp)
  402ee3:	0f b6 12             	movzbl (%edx),%edx
  402ee6:	88 10                	mov    %dl,(%eax)
  402ee8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  402eeb:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  402eee:	75 e1                	jne    402ed1 <exlftoa+0x2ce>
  402ef0:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402ef3:	c6 00 2e             	movb   $0x2e,(%eax)
  402ef6:	83 7d cc 00          	cmpl   $0x0,-0x34(%ebp)
  402efa:	74 1d                	je     402f19 <exlftoa+0x316>
  402efc:	8b 45 c8             	mov    -0x38(%ebp),%eax
  402eff:	3b 45 cc             	cmp    -0x34(%ebp),%eax
  402f02:	7e 08                	jle    402f0c <exlftoa+0x309>
  402f04:	8b 45 cc             	mov    -0x34(%ebp),%eax
  402f07:	83 c0 02             	add    $0x2,%eax
  402f0a:	eb 06                	jmp    402f12 <exlftoa+0x30f>
  402f0c:	8b 45 c8             	mov    -0x38(%ebp),%eax
  402f0f:	83 c0 02             	add    $0x2,%eax
  402f12:	8b 55 c4             	mov    -0x3c(%ebp),%edx
  402f15:	01 d0                	add    %edx,%eax
  402f17:	eb 03                	jmp    402f1c <exlftoa+0x319>
  402f19:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402f1c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  402f1f:	8b 45 c8             	mov    -0x38(%ebp),%eax
  402f22:	3b 45 cc             	cmp    -0x34(%ebp),%eax
  402f25:	7f 08                	jg     402f2f <exlftoa+0x32c>
  402f27:	8b 45 cc             	mov    -0x34(%ebp),%eax
  402f2a:	2b 45 c8             	sub    -0x38(%ebp),%eax
  402f2d:	eb 05                	jmp    402f34 <exlftoa+0x331>
  402f2f:	b8 00 00 00 00       	mov    $0x0,%eax
  402f34:	89 45 cc             	mov    %eax,-0x34(%ebp)
  402f37:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  402f3a:	89 45 ec             	mov    %eax,-0x14(%ebp)
  402f3d:	eb 56                	jmp    402f95 <exlftoa+0x392>
  402f3f:	dd 45 d8             	fldl   -0x28(%ebp)
  402f42:	dd 05 48 71 40 00    	fldl   0x407148
  402f48:	de c9                	fmulp  %st,%st(1)
  402f4a:	d9 7d 9e             	fnstcw -0x62(%ebp)
  402f4d:	0f b7 45 9e          	movzwl -0x62(%ebp),%eax
  402f51:	80 cc 0c             	or     $0xc,%ah
  402f54:	66 89 45 9a          	mov    %ax,-0x66(%ebp)
  402f58:	d9 6d 9a             	fldcw  -0x66(%ebp)
  402f5b:	df 5d 94             	fistps -0x6c(%ebp)
  402f5e:	d9 6d 9e             	fldcw  -0x62(%ebp)
  402f61:	0f b6 45 94          	movzbl -0x6c(%ebp),%eax
  402f65:	8d 48 30             	lea    0x30(%eax),%ecx
  402f68:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402f6b:	8d 50 01             	lea    0x1(%eax),%edx
  402f6e:	89 55 ec             	mov    %edx,-0x14(%ebp)
  402f71:	89 ca                	mov    %ecx,%edx
  402f73:	88 10                	mov    %dl,(%eax)
  402f75:	dd 45 d8             	fldl   -0x28(%ebp)
  402f78:	dd 05 48 71 40 00    	fldl   0x407148
  402f7e:	de c9                	fmulp  %st,%st(1)
  402f80:	83 ec 08             	sub    $0x8,%esp
  402f83:	8d 64 24 f8          	lea    -0x8(%esp),%esp
  402f87:	dd 1c 24             	fstpl  (%esp)
  402f8a:	e8 07 e2 ff ff       	call   401196 <double_getRight>
  402f8f:	83 c4 10             	add    $0x10,%esp
  402f92:	dd 5d d8             	fstpl  -0x28(%ebp)
  402f95:	8b 45 cc             	mov    -0x34(%ebp),%eax
  402f98:	8d 50 ff             	lea    -0x1(%eax),%edx
  402f9b:	89 55 cc             	mov    %edx,-0x34(%ebp)
  402f9e:	85 c0                	test   %eax,%eax
  402fa0:	75 9d                	jne    402f3f <exlftoa+0x33c>
  402fa2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402fa5:	8d 50 01             	lea    0x1(%eax),%edx
  402fa8:	89 55 ec             	mov    %edx,-0x14(%ebp)
  402fab:	0f b6 55 9c          	movzbl -0x64(%ebp),%edx
  402faf:	88 10                	mov    %dl,(%eax)
  402fb1:	83 ec 04             	sub    $0x4,%esp
  402fb4:	6a 0a                	push   $0xa
  402fb6:	8d 45 ae             	lea    -0x52(%ebp),%eax
  402fb9:	50                   	push   %eax
  402fba:	ff 75 c8             	push   -0x38(%ebp)
  402fbd:	e8 31 f7 ff ff       	call   4026f3 <itoa>
  402fc2:	83 c4 10             	add    $0x10,%esp
  402fc5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  402fc8:	0f b6 00             	movzbl (%eax),%eax
  402fcb:	3c 2d                	cmp    $0x2d,%al
  402fcd:	75 19                	jne    402fe8 <exlftoa+0x3e5>
  402fcf:	8b 55 f4             	mov    -0xc(%ebp),%edx
  402fd2:	8d 42 01             	lea    0x1(%edx),%eax
  402fd5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  402fd8:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402fdb:	8d 48 01             	lea    0x1(%eax),%ecx
  402fde:	89 4d ec             	mov    %ecx,-0x14(%ebp)
  402fe1:	0f b6 12             	movzbl (%edx),%edx
  402fe4:	88 10                	mov    %dl,(%eax)
  402fe6:	eb 0c                	jmp    402ff4 <exlftoa+0x3f1>
  402fe8:	8b 45 ec             	mov    -0x14(%ebp),%eax
  402feb:	8d 50 01             	lea    0x1(%eax),%edx
  402fee:	89 55 ec             	mov    %edx,-0x14(%ebp)
  402ff1:	c6 00 2b             	movb   $0x2b,(%eax)
  402ff4:	83 ec 0c             	sub    $0xc,%esp
  402ff7:	ff 75 f4             	push   -0xc(%ebp)
  402ffa:	e8 29 01 00 00       	call   403128 <strlen>
  402fff:	83 c4 10             	add    $0x10,%esp
  403002:	89 45 f0             	mov    %eax,-0x10(%ebp)
  403005:	b8 03 00 00 00       	mov    $0x3,%eax
  40300a:	2b 45 f0             	sub    -0x10(%ebp),%eax
  40300d:	89 45 f0             	mov    %eax,-0x10(%ebp)
  403010:	eb 0c                	jmp    40301e <exlftoa+0x41b>
  403012:	8b 45 ec             	mov    -0x14(%ebp),%eax
  403015:	8d 50 01             	lea    0x1(%eax),%edx
  403018:	89 55 ec             	mov    %edx,-0x14(%ebp)
  40301b:	c6 00 30             	movb   $0x30,(%eax)
  40301e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  403021:	8d 50 ff             	lea    -0x1(%eax),%edx
  403024:	89 55 f0             	mov    %edx,-0x10(%ebp)
  403027:	85 c0                	test   %eax,%eax
  403029:	75 e7                	jne    403012 <exlftoa+0x40f>
  40302b:	eb 17                	jmp    403044 <exlftoa+0x441>
  40302d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  403030:	8d 42 01             	lea    0x1(%edx),%eax
  403033:	89 45 f4             	mov    %eax,-0xc(%ebp)
  403036:	8b 45 ec             	mov    -0x14(%ebp),%eax
  403039:	8d 48 01             	lea    0x1(%eax),%ecx
  40303c:	89 4d ec             	mov    %ecx,-0x14(%ebp)
  40303f:	0f b6 12             	movzbl (%edx),%edx
  403042:	88 10                	mov    %dl,(%eax)
  403044:	8b 45 f4             	mov    -0xc(%ebp),%eax
  403047:	0f b6 00             	movzbl (%eax),%eax
  40304a:	84 c0                	test   %al,%al
  40304c:	75 df                	jne    40302d <exlftoa+0x42a>
  40304e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  403051:	c6 00 00             	movb   $0x0,(%eax)
  403054:	8b 45 10             	mov    0x10(%ebp),%eax
  403057:	c9                   	leave
  403058:	c3                   	ret

00403059 <strcmp>:
  403059:	55                   	push   %ebp
  40305a:	89 e5                	mov    %esp,%ebp
  40305c:	83 ec 10             	sub    $0x10,%esp
  40305f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  403066:	eb 08                	jmp    403070 <strcmp+0x17>
  403068:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  40306c:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  403070:	8b 45 08             	mov    0x8(%ebp),%eax
  403073:	0f b6 00             	movzbl (%eax),%eax
  403076:	0f b6 d0             	movzbl %al,%edx
  403079:	8b 45 0c             	mov    0xc(%ebp),%eax
  40307c:	0f b6 00             	movzbl (%eax),%eax
  40307f:	0f b6 c0             	movzbl %al,%eax
  403082:	29 c2                	sub    %eax,%edx
  403084:	89 55 fc             	mov    %edx,-0x4(%ebp)
  403087:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  40308b:	75 0a                	jne    403097 <strcmp+0x3e>
  40308d:	8b 45 08             	mov    0x8(%ebp),%eax
  403090:	0f b6 00             	movzbl (%eax),%eax
  403093:	84 c0                	test   %al,%al
  403095:	75 d1                	jne    403068 <strcmp+0xf>
  403097:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  40309b:	79 09                	jns    4030a6 <strcmp+0x4d>
  40309d:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
  4030a4:	eb 0d                	jmp    4030b3 <strcmp+0x5a>
  4030a6:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  4030aa:	7e 07                	jle    4030b3 <strcmp+0x5a>
  4030ac:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
  4030b3:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4030b6:	c9                   	leave
  4030b7:	c3                   	ret

004030b8 <strcpy>:
  4030b8:	55                   	push   %ebp
  4030b9:	89 e5                	mov    %esp,%ebp
  4030bb:	83 ec 10             	sub    $0x10,%esp
  4030be:	8b 45 08             	mov    0x8(%ebp),%eax
  4030c1:	89 45 fc             	mov    %eax,-0x4(%ebp)
  4030c4:	90                   	nop
  4030c5:	8b 55 0c             	mov    0xc(%ebp),%edx
  4030c8:	8d 42 01             	lea    0x1(%edx),%eax
  4030cb:	89 45 0c             	mov    %eax,0xc(%ebp)
  4030ce:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4030d1:	8d 48 01             	lea    0x1(%eax),%ecx
  4030d4:	89 4d fc             	mov    %ecx,-0x4(%ebp)
  4030d7:	0f b6 12             	movzbl (%edx),%edx
  4030da:	88 10                	mov    %dl,(%eax)
  4030dc:	0f b6 00             	movzbl (%eax),%eax
  4030df:	84 c0                	test   %al,%al
  4030e1:	75 e2                	jne    4030c5 <strcpy+0xd>
  4030e3:	8b 45 08             	mov    0x8(%ebp),%eax
  4030e6:	c9                   	leave
  4030e7:	c3                   	ret

004030e8 <strcat>:
  4030e8:	55                   	push   %ebp
  4030e9:	89 e5                	mov    %esp,%ebp
  4030eb:	83 ec 10             	sub    $0x10,%esp
  4030ee:	8b 45 08             	mov    0x8(%ebp),%eax
  4030f1:	89 45 fc             	mov    %eax,-0x4(%ebp)
  4030f4:	eb 04                	jmp    4030fa <strcat+0x12>
  4030f6:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  4030fa:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4030fd:	0f b6 00             	movzbl (%eax),%eax
  403100:	84 c0                	test   %al,%al
  403102:	75 f2                	jne    4030f6 <strcat+0xe>
  403104:	90                   	nop
  403105:	8b 55 0c             	mov    0xc(%ebp),%edx
  403108:	8d 42 01             	lea    0x1(%edx),%eax
  40310b:	89 45 0c             	mov    %eax,0xc(%ebp)
  40310e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  403111:	8d 48 01             	lea    0x1(%eax),%ecx
  403114:	89 4d fc             	mov    %ecx,-0x4(%ebp)
  403117:	0f b6 12             	movzbl (%edx),%edx
  40311a:	88 10                	mov    %dl,(%eax)
  40311c:	0f b6 00             	movzbl (%eax),%eax
  40311f:	84 c0                	test   %al,%al
  403121:	75 e2                	jne    403105 <strcat+0x1d>
  403123:	8b 45 08             	mov    0x8(%ebp),%eax
  403126:	c9                   	leave
  403127:	c3                   	ret

00403128 <strlen>:
  403128:	55                   	push   %ebp
  403129:	89 e5                	mov    %esp,%ebp
  40312b:	83 ec 10             	sub    $0x10,%esp
  40312e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  403135:	eb 04                	jmp    40313b <strlen+0x13>
  403137:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  40313b:	8b 45 08             	mov    0x8(%ebp),%eax
  40313e:	8d 50 01             	lea    0x1(%eax),%edx
  403141:	89 55 08             	mov    %edx,0x8(%ebp)
  403144:	0f b6 00             	movzbl (%eax),%eax
  403147:	84 c0                	test   %al,%al
  403149:	75 ec                	jne    403137 <strlen+0xf>
  40314b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40314e:	c9                   	leave
  40314f:	c3                   	ret

00403150 <memset>:
  403150:	55                   	push   %ebp
  403151:	89 e5                	mov    %esp,%ebp
  403153:	83 ec 10             	sub    $0x10,%esp
  403156:	8b 45 08             	mov    0x8(%ebp),%eax
  403159:	89 45 fc             	mov    %eax,-0x4(%ebp)
  40315c:	eb 0e                	jmp    40316c <memset+0x1c>
  40315e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  403161:	8d 50 01             	lea    0x1(%eax),%edx
  403164:	89 55 fc             	mov    %edx,-0x4(%ebp)
  403167:	8b 55 0c             	mov    0xc(%ebp),%edx
  40316a:	88 10                	mov    %dl,(%eax)
  40316c:	8b 45 10             	mov    0x10(%ebp),%eax
  40316f:	8d 50 ff             	lea    -0x1(%eax),%edx
  403172:	89 55 10             	mov    %edx,0x10(%ebp)
  403175:	85 c0                	test   %eax,%eax
  403177:	75 e5                	jne    40315e <memset+0xe>
  403179:	8b 45 08             	mov    0x8(%ebp),%eax
  40317c:	c9                   	leave
  40317d:	c3                   	ret

0040317e <memmove>:
  40317e:	55                   	push   %ebp
  40317f:	89 e5                	mov    %esp,%ebp
  403181:	57                   	push   %edi
  403182:	56                   	push   %esi
  403183:	53                   	push   %ebx
  403184:	8b 45 10             	mov    0x10(%ebp),%eax
  403187:	8b 55 08             	mov    0x8(%ebp),%edx
  40318a:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  40318d:	89 c1                	mov    %eax,%ecx
  40318f:	89 d7                	mov    %edx,%edi
  403191:	89 de                	mov    %ebx,%esi
  403193:	fc                   	cld
  403194:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  403196:	90                   	nop
  403197:	5b                   	pop    %ebx
  403198:	5e                   	pop    %esi
  403199:	5f                   	pop    %edi
  40319a:	5d                   	pop    %ebp
  40319b:	c3                   	ret

0040319c <memcpy>:
  40319c:	55                   	push   %ebp
  40319d:	89 e5                	mov    %esp,%ebp
  40319f:	57                   	push   %edi
  4031a0:	56                   	push   %esi
  4031a1:	53                   	push   %ebx
  4031a2:	8b 45 10             	mov    0x10(%ebp),%eax
  4031a5:	8b 55 08             	mov    0x8(%ebp),%edx
  4031a8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  4031ab:	89 c1                	mov    %eax,%ecx
  4031ad:	89 d7                	mov    %edx,%edi
  4031af:	89 de                	mov    %ebx,%esi
  4031b1:	fc                   	cld
  4031b2:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  4031b4:	90                   	nop
  4031b5:	5b                   	pop    %ebx
  4031b6:	5e                   	pop    %esi
  4031b7:	5f                   	pop    %edi
  4031b8:	5d                   	pop    %ebp
  4031b9:	c3                   	ret

004031ba <execv>:
  4031ba:	55                   	push   %ebp
  4031bb:	89 e5                	mov    %esp,%ebp
  4031bd:	53                   	push   %ebx
  4031be:	83 ec 10             	sub    $0x10,%esp
  4031c1:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  4031c8:	eb 04                	jmp    4031ce <execv+0x14>
  4031ca:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  4031ce:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4031d1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  4031d8:	8b 45 0c             	mov    0xc(%ebp),%eax
  4031db:	01 d0                	add    %edx,%eax
  4031dd:	8b 00                	mov    (%eax),%eax
  4031df:	85 c0                	test   %eax,%eax
  4031e1:	75 e7                	jne    4031ca <execv+0x10>
  4031e3:	b8 0b 00 00 00       	mov    $0xb,%eax
  4031e8:	8b 5d 08             	mov    0x8(%ebp),%ebx
  4031eb:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  4031ee:	8b 55 0c             	mov    0xc(%ebp),%edx
  4031f1:	cd 80                	int    $0x80
  4031f3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  4031f6:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  4031fa:	78 05                	js     403201 <execv+0x47>
  4031fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4031ff:	eb 05                	jmp    403206 <execv+0x4c>
  403201:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403206:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  403209:	c9                   	leave
  40320a:	c3                   	ret

0040320b <fork>:
  40320b:	55                   	push   %ebp
  40320c:	89 e5                	mov    %esp,%ebp
  40320e:	83 ec 10             	sub    $0x10,%esp
  403211:	b8 02 00 00 00       	mov    $0x2,%eax
  403216:	cd 80                	int    $0x80
  403218:	89 45 fc             	mov    %eax,-0x4(%ebp)
  40321b:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  40321f:	78 05                	js     403226 <fork+0x1b>
  403221:	8b 45 fc             	mov    -0x4(%ebp),%eax
  403224:	eb 05                	jmp    40322b <fork+0x20>
  403226:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40322b:	c9                   	leave
  40322c:	c3                   	ret

0040322d <wait>:
  40322d:	55                   	push   %ebp
  40322e:	89 e5                	mov    %esp,%ebp
  403230:	53                   	push   %ebx
  403231:	83 ec 10             	sub    $0x10,%esp
  403234:	b8 07 00 00 00       	mov    $0x7,%eax
  403239:	8b 55 08             	mov    0x8(%ebp),%edx
  40323c:	89 d3                	mov    %edx,%ebx
  40323e:	cd 80                	int    $0x80
  403240:	89 45 f8             	mov    %eax,-0x8(%ebp)
  403243:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  403247:	78 05                	js     40324e <wait+0x21>
  403249:	8b 45 f8             	mov    -0x8(%ebp),%eax
  40324c:	eb 05                	jmp    403253 <wait+0x26>
  40324e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403253:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  403256:	c9                   	leave
  403257:	c3                   	ret

00403258 <exit>:
  403258:	55                   	push   %ebp
  403259:	89 e5                	mov    %esp,%ebp
  40325b:	53                   	push   %ebx
  40325c:	83 ec 10             	sub    $0x10,%esp
  40325f:	b8 01 00 00 00       	mov    $0x1,%eax
  403264:	8b 55 08             	mov    0x8(%ebp),%edx
  403267:	89 d3                	mov    %edx,%ebx
  403269:	cd 80                	int    $0x80
  40326b:	89 45 f8             	mov    %eax,-0x8(%ebp)
  40326e:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  403272:	78 05                	js     403279 <exit+0x21>
  403274:	8b 45 f8             	mov    -0x8(%ebp),%eax
  403277:	eb 05                	jmp    40327e <exit+0x26>
  403279:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40327e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  403281:	c9                   	leave
  403282:	c3                   	ret

00403283 <signal>:
  403283:	55                   	push   %ebp
  403284:	89 e5                	mov    %esp,%ebp
  403286:	53                   	push   %ebx
  403287:	83 ec 10             	sub    $0x10,%esp
  40328a:	b8 30 00 00 00       	mov    $0x30,%eax
  40328f:	8b 55 08             	mov    0x8(%ebp),%edx
  403292:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  403295:	89 d3                	mov    %edx,%ebx
  403297:	cd 80                	int    $0x80
  403299:	89 45 f8             	mov    %eax,-0x8(%ebp)
  40329c:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  4032a0:	78 05                	js     4032a7 <signal+0x24>
  4032a2:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4032a5:	eb 05                	jmp    4032ac <signal+0x29>
  4032a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032ac:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4032af:	c9                   	leave
  4032b0:	c3                   	ret

004032b1 <kill>:
  4032b1:	55                   	push   %ebp
  4032b2:	89 e5                	mov    %esp,%ebp
  4032b4:	53                   	push   %ebx
  4032b5:	83 ec 10             	sub    $0x10,%esp
  4032b8:	b8 25 00 00 00       	mov    $0x25,%eax
  4032bd:	8b 55 08             	mov    0x8(%ebp),%edx
  4032c0:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  4032c3:	89 d3                	mov    %edx,%ebx
  4032c5:	cd 80                	int    $0x80
  4032c7:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4032ca:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  4032ce:	78 05                	js     4032d5 <kill+0x24>
  4032d0:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4032d3:	eb 05                	jmp    4032da <kill+0x29>
  4032d5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032da:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4032dd:	c9                   	leave
  4032de:	c3                   	ret

004032df <sleep>:
  4032df:	55                   	push   %ebp
  4032e0:	89 e5                	mov    %esp,%ebp
  4032e2:	53                   	push   %ebx
  4032e3:	83 ec 10             	sub    $0x10,%esp
  4032e6:	b8 23 00 00 00       	mov    $0x23,%eax
  4032eb:	8b 55 08             	mov    0x8(%ebp),%edx
  4032ee:	89 d3                	mov    %edx,%ebx
  4032f0:	cd 80                	int    $0x80
  4032f2:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4032f5:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  4032f9:	78 05                	js     403300 <sleep+0x21>
  4032fb:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4032fe:	eb 05                	jmp    403305 <sleep+0x26>
  403300:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403305:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  403308:	c9                   	leave
  403309:	c3                   	ret

0040330a <brk>:
  40330a:	55                   	push   %ebp
  40330b:	89 e5                	mov    %esp,%ebp
  40330d:	53                   	push   %ebx
  40330e:	83 ec 14             	sub    $0x14,%esp
  403311:	b8 11 00 00 00       	mov    $0x11,%eax
  403316:	8b 55 08             	mov    0x8(%ebp),%edx
  403319:	89 d3                	mov    %edx,%ebx
  40331b:	cd 80                	int    $0x80
  40331d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  403320:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  403324:	78 05                	js     40332b <brk+0x21>
  403326:	8b 45 f4             	mov    -0xc(%ebp),%eax
  403329:	eb 25                	jmp    403350 <brk+0x46>
  40332b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40332e:	f7 d8                	neg    %eax
  403330:	a3 18 90 40 00       	mov    %eax,0x409018
  403335:	a1 18 90 40 00       	mov    0x409018,%eax
  40333a:	83 ec 08             	sub    $0x8,%esp
  40333d:	50                   	push   %eax
  40333e:	68 b2 71 40 00       	push   $0x4071b2
  403343:	e8 32 f2 ff ff       	call   40257a <printf>
  403348:	83 c4 10             	add    $0x10,%esp
  40334b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403350:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  403353:	c9                   	leave
  403354:	c3                   	ret

00403355 <syncFileSystem>:
  403355:	55                   	push   %ebp
  403356:	89 e5                	mov    %esp,%ebp
  403358:	83 ec 10             	sub    $0x10,%esp
  40335b:	b8 24 00 00 00       	mov    $0x24,%eax
  403360:	cd 80                	int    $0x80
  403362:	89 45 fc             	mov    %eax,-0x4(%ebp)
  403365:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  403369:	78 05                	js     403370 <syncFileSystem+0x1b>
  40336b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40336e:	eb 05                	jmp    403375 <syncFileSystem+0x20>
  403370:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403375:	c9                   	leave
  403376:	c3                   	ret

00403377 <getPath>:
  403377:	55                   	push   %ebp
  403378:	89 e5                	mov    %esp,%ebp
  40337a:	53                   	push   %ebx
  40337b:	83 ec 10             	sub    $0x10,%esp
  40337e:	b8 27 00 00 00       	mov    $0x27,%eax
  403383:	8b 55 08             	mov    0x8(%ebp),%edx
  403386:	89 d3                	mov    %edx,%ebx
  403388:	cd 80                	int    $0x80
  40338a:	89 45 f8             	mov    %eax,-0x8(%ebp)
  40338d:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  403391:	78 05                	js     403398 <getPath+0x21>
  403393:	8b 45 f8             	mov    -0x8(%ebp),%eax
  403396:	eb 05                	jmp    40339d <getPath+0x26>
  403398:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40339d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4033a0:	c9                   	leave
  4033a1:	c3                   	ret

004033a2 <getpid>:
  4033a2:	55                   	push   %ebp
  4033a3:	89 e5                	mov    %esp,%ebp
  4033a5:	83 ec 10             	sub    $0x10,%esp
  4033a8:	b8 14 00 00 00       	mov    $0x14,%eax
  4033ad:	cd 80                	int    $0x80
  4033af:	89 45 fc             	mov    %eax,-0x4(%ebp)
  4033b2:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  4033b6:	78 05                	js     4033bd <getpid+0x1b>
  4033b8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4033bb:	eb 05                	jmp    4033c2 <getpid+0x20>
  4033bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033c2:	c9                   	leave
  4033c3:	c3                   	ret

004033c4 <getgid>:
  4033c4:	55                   	push   %ebp
  4033c5:	89 e5                	mov    %esp,%ebp
  4033c7:	83 ec 10             	sub    $0x10,%esp
  4033ca:	b8 2f 00 00 00       	mov    $0x2f,%eax
  4033cf:	cd 80                	int    $0x80
  4033d1:	89 45 fc             	mov    %eax,-0x4(%ebp)
  4033d4:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  4033d8:	78 05                	js     4033df <getgid+0x1b>
  4033da:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4033dd:	eb 05                	jmp    4033e4 <getgid+0x20>
  4033df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033e4:	c9                   	leave
  4033e5:	c3                   	ret

004033e6 <getuid>:
  4033e6:	55                   	push   %ebp
  4033e7:	89 e5                	mov    %esp,%ebp
  4033e9:	83 ec 10             	sub    $0x10,%esp
  4033ec:	b8 18 00 00 00       	mov    $0x18,%eax
  4033f1:	cd 80                	int    $0x80
  4033f3:	89 45 fc             	mov    %eax,-0x4(%ebp)
  4033f6:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  4033fa:	78 05                	js     403401 <getuid+0x1b>
  4033fc:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4033ff:	eb 05                	jmp    403406 <getuid+0x20>
  403401:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403406:	c9                   	leave
  403407:	c3                   	ret

00403408 <setgid>:
  403408:	55                   	push   %ebp
  403409:	89 e5                	mov    %esp,%ebp
  40340b:	53                   	push   %ebx
  40340c:	83 ec 14             	sub    $0x14,%esp
  40340f:	8b 45 08             	mov    0x8(%ebp),%eax
  403412:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
  403416:	b8 2e 00 00 00       	mov    $0x2e,%eax
  40341b:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
  40341f:	89 d3                	mov    %edx,%ebx
  403421:	cd 80                	int    $0x80
  403423:	89 45 f8             	mov    %eax,-0x8(%ebp)
  403426:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  40342a:	78 05                	js     403431 <setgid+0x29>
  40342c:	8b 45 f8             	mov    -0x8(%ebp),%eax
  40342f:	eb 05                	jmp    403436 <setgid+0x2e>
  403431:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403436:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  403439:	c9                   	leave
  40343a:	c3                   	ret

0040343b <setuid>:
  40343b:	55                   	push   %ebp
  40343c:	89 e5                	mov    %esp,%ebp
  40343e:	53                   	push   %ebx
  40343f:	83 ec 14             	sub    $0x14,%esp
  403442:	8b 45 08             	mov    0x8(%ebp),%eax
  403445:	66 89 45 e8          	mov    %ax,-0x18(%ebp)
  403449:	b8 17 00 00 00       	mov    $0x17,%eax
  40344e:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
  403452:	89 d3                	mov    %edx,%ebx
  403454:	cd 80                	int    $0x80
  403456:	89 45 f8             	mov    %eax,-0x8(%ebp)
  403459:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  40345d:	78 05                	js     403464 <setuid+0x29>
  40345f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  403462:	eb 05                	jmp    403469 <setuid+0x2e>
  403464:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403469:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40346c:	c9                   	leave
  40346d:	c3                   	ret

0040346e <gettime>:
  40346e:	55                   	push   %ebp
  40346f:	89 e5                	mov    %esp,%ebp
  403471:	53                   	push   %ebx
  403472:	83 ec 10             	sub    $0x10,%esp
  403475:	b8 0d 00 00 00       	mov    $0xd,%eax
  40347a:	8b 55 08             	mov    0x8(%ebp),%edx
  40347d:	89 d3                	mov    %edx,%ebx
  40347f:	cd 80                	int    $0x80
  403481:	89 45 f8             	mov    %eax,-0x8(%ebp)
  403484:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  403488:	78 05                	js     40348f <gettime+0x21>
  40348a:	8b 45 f8             	mov    -0x8(%ebp),%eax
  40348d:	eb 05                	jmp    403494 <gettime+0x26>
  40348f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403494:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  403497:	c9                   	leave
  403498:	c3                   	ret

00403499 <times>:
  403499:	55                   	push   %ebp
  40349a:	89 e5                	mov    %esp,%ebp
  40349c:	53                   	push   %ebx
  40349d:	83 ec 10             	sub    $0x10,%esp
  4034a0:	b8 2b 00 00 00       	mov    $0x2b,%eax
  4034a5:	8b 55 08             	mov    0x8(%ebp),%edx
  4034a8:	89 d3                	mov    %edx,%ebx
  4034aa:	cd 80                	int    $0x80
  4034ac:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4034af:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  4034b3:	78 05                	js     4034ba <times+0x21>
  4034b5:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4034b8:	eb 05                	jmp    4034bf <times+0x26>
  4034ba:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034bf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4034c2:	c9                   	leave
  4034c3:	c3                   	ret

004034c4 <getswtch>:
  4034c4:	55                   	push   %ebp
  4034c5:	89 e5                	mov    %esp,%ebp
  4034c7:	83 ec 10             	sub    $0x10,%esp
  4034ca:	b8 26 00 00 00       	mov    $0x26,%eax
  4034cf:	cd 80                	int    $0x80
  4034d1:	89 45 fc             	mov    %eax,-0x4(%ebp)
  4034d4:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  4034d8:	78 05                	js     4034df <getswtch+0x1b>
  4034da:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4034dd:	eb 05                	jmp    4034e4 <getswtch+0x20>
  4034df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034e4:	c9                   	leave
  4034e5:	c3                   	ret

004034e6 <trace>:
  4034e6:	55                   	push   %ebp
  4034e7:	89 e5                	mov    %esp,%ebp
  4034e9:	53                   	push   %ebx
  4034ea:	83 ec 10             	sub    $0x10,%esp
  4034ed:	b8 1d 00 00 00       	mov    $0x1d,%eax
  4034f2:	8b 55 08             	mov    0x8(%ebp),%edx
  4034f5:	89 d3                	mov    %edx,%ebx
  4034f7:	cd 80                	int    $0x80
  4034f9:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4034fc:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  403500:	78 05                	js     403507 <trace+0x21>
  403502:	8b 45 f8             	mov    -0x8(%ebp),%eax
  403505:	eb 05                	jmp    40350c <trace+0x26>
  403507:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40350c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  40350f:	c9                   	leave
  403510:	c3                   	ret

00403511 <sbrk>:
  403511:	55                   	push   %ebp
  403512:	89 e5                	mov    %esp,%ebp
  403514:	83 ec 18             	sub    $0x18,%esp
  403517:	a1 1c 90 40 00       	mov    0x40901c,%eax
  40351c:	85 c0                	test   %eax,%eax
  40351e:	75 12                	jne    403532 <sbrk+0x21>
  403520:	83 ec 0c             	sub    $0xc,%esp
  403523:	6a 00                	push   $0x0
  403525:	e8 e0 fd ff ff       	call   40330a <brk>
  40352a:	83 c4 10             	add    $0x10,%esp
  40352d:	a3 1c 90 40 00       	mov    %eax,0x40901c
  403532:	8b 15 1c 90 40 00    	mov    0x40901c,%edx
  403538:	8b 45 08             	mov    0x8(%ebp),%eax
  40353b:	01 d0                	add    %edx,%eax
  40353d:	83 e8 01             	sub    $0x1,%eax
  403540:	89 45 f4             	mov    %eax,-0xc(%ebp)
  403543:	8b 45 f4             	mov    -0xc(%ebp),%eax
  403546:	c1 e8 0c             	shr    $0xc,%eax
  403549:	83 c0 01             	add    $0x1,%eax
  40354c:	c1 e0 0c             	shl    $0xc,%eax
  40354f:	83 ec 0c             	sub    $0xc,%esp
  403552:	50                   	push   %eax
  403553:	e8 b2 fd ff ff       	call   40330a <brk>
  403558:	83 c4 10             	add    $0x10,%esp
  40355b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  40355e:	83 c0 01             	add    $0x1,%eax
  403561:	a3 1c 90 40 00       	mov    %eax,0x40901c
  403566:	a1 1c 90 40 00       	mov    0x40901c,%eax
  40356b:	c9                   	leave
  40356c:	c3                   	ret

0040356d <getppid>:
  40356d:	55                   	push   %ebp
  40356e:	89 e5                	mov    %esp,%ebp
  403570:	53                   	push   %ebx
  403571:	83 ec 10             	sub    $0x10,%esp
  403574:	b8 31 00 00 00       	mov    $0x31,%eax
  403579:	8b 55 08             	mov    0x8(%ebp),%edx
  40357c:	89 d3                	mov    %edx,%ebx
  40357e:	cd 80                	int    $0x80
  403580:	89 45 f8             	mov    %eax,-0x8(%ebp)
  403583:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  403587:	78 05                	js     40358e <getppid+0x21>
  403589:	8b 45 f8             	mov    -0x8(%ebp),%eax
  40358c:	eb 05                	jmp    403593 <getppid+0x26>
  40358e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403593:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  403596:	c9                   	leave
  403597:	c3                   	ret

00403598 <gtime>:
  403598:	55                   	push   %ebp
  403599:	89 e5                	mov    %esp,%ebp
  40359b:	83 ec 10             	sub    $0x10,%esp
  40359e:	b8 0d 00 00 00       	mov    $0xd,%eax
  4035a3:	cd 80                	int    $0x80
  4035a5:	89 45 fc             	mov    %eax,-0x4(%ebp)
  4035a8:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  4035ac:	78 05                	js     4035b3 <gtime+0x1b>
  4035ae:	8b 45 fc             	mov    -0x4(%ebp),%eax
  4035b1:	eb 05                	jmp    4035b8 <gtime+0x20>
  4035b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035b8:	c9                   	leave
  4035b9:	c3                   	ret

004035ba <stime>:
  4035ba:	55                   	push   %ebp
  4035bb:	89 e5                	mov    %esp,%ebp
  4035bd:	53                   	push   %ebx
  4035be:	83 ec 10             	sub    $0x10,%esp
  4035c1:	b8 19 00 00 00       	mov    $0x19,%eax
  4035c6:	8b 55 08             	mov    0x8(%ebp),%edx
  4035c9:	89 d3                	mov    %edx,%ebx
  4035cb:	cd 80                	int    $0x80
  4035cd:	89 45 f8             	mov    %eax,-0x8(%ebp)
  4035d0:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  4035d4:	78 05                	js     4035db <stime+0x21>
  4035d6:	8b 45 f8             	mov    -0x8(%ebp),%eax
  4035d9:	eb 05                	jmp    4035e0 <stime+0x26>
  4035db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035e0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  4035e3:	c9                   	leave
  4035e4:	c3                   	ret

004035e5 <daysInYear>:
  4035e5:	55                   	push   %ebp
  4035e6:	89 e5                	mov    %esp,%ebp
  4035e8:	8b 45 08             	mov    0x8(%ebp),%eax
  4035eb:	83 e0 03             	and    $0x3,%eax
  4035ee:	85 c0                	test   %eax,%eax
  4035f0:	75 50                	jne    403642 <daysInYear+0x5d>
  4035f2:	8b 4d 08             	mov    0x8(%ebp),%ecx
  4035f5:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
  4035fa:	89 c8                	mov    %ecx,%eax
  4035fc:	f7 ea                	imul   %edx
  4035fe:	89 d0                	mov    %edx,%eax
  403600:	c1 f8 05             	sar    $0x5,%eax
  403603:	89 ca                	mov    %ecx,%edx
  403605:	c1 fa 1f             	sar    $0x1f,%edx
  403608:	29 d0                	sub    %edx,%eax
  40360a:	6b d0 64             	imul   $0x64,%eax,%edx
  40360d:	89 c8                	mov    %ecx,%eax
  40360f:	29 d0                	sub    %edx,%eax
  403611:	85 c0                	test   %eax,%eax
  403613:	75 26                	jne    40363b <daysInYear+0x56>
  403615:	8b 4d 08             	mov    0x8(%ebp),%ecx
  403618:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
  40361d:	89 c8                	mov    %ecx,%eax
  40361f:	f7 ea                	imul   %edx
  403621:	89 d0                	mov    %edx,%eax
  403623:	c1 f8 07             	sar    $0x7,%eax
  403626:	89 ca                	mov    %ecx,%edx
  403628:	c1 fa 1f             	sar    $0x1f,%edx
  40362b:	29 d0                	sub    %edx,%eax
  40362d:	69 d0 90 01 00 00    	imul   $0x190,%eax,%edx
  403633:	89 c8                	mov    %ecx,%eax
  403635:	29 d0                	sub    %edx,%eax
  403637:	85 c0                	test   %eax,%eax
  403639:	75 07                	jne    403642 <daysInYear+0x5d>
  40363b:	b8 6e 01 00 00       	mov    $0x16e,%eax
  403640:	eb 05                	jmp    403647 <daysInYear+0x62>
  403642:	b8 6d 01 00 00       	mov    $0x16d,%eax
  403647:	5d                   	pop    %ebp
  403648:	c3                   	ret

00403649 <mktime>:
  403649:	55                   	push   %ebp
  40364a:	89 e5                	mov    %esp,%ebp
  40364c:	83 ec 10             	sub    $0x10,%esp
  40364f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  403656:	8b 45 08             	mov    0x8(%ebp),%eax
  403659:	8b 40 14             	mov    0x14(%eax),%eax
  40365c:	05 d0 07 00 00       	add    $0x7d0,%eax
  403661:	89 45 f0             	mov    %eax,-0x10(%ebp)
  403664:	8b 45 08             	mov    0x8(%ebp),%eax
  403667:	8b 00                	mov    (%eax),%eax
  403669:	01 45 f4             	add    %eax,-0xc(%ebp)
  40366c:	8b 45 08             	mov    0x8(%ebp),%eax
  40366f:	8b 40 04             	mov    0x4(%eax),%eax
  403672:	6b c0 3c             	imul   $0x3c,%eax,%eax
  403675:	01 45 f4             	add    %eax,-0xc(%ebp)
  403678:	8b 45 08             	mov    0x8(%ebp),%eax
  40367b:	8b 40 08             	mov    0x8(%eax),%eax
  40367e:	69 c0 10 0e 00 00    	imul   $0xe10,%eax,%eax
  403684:	01 45 f4             	add    %eax,-0xc(%ebp)
  403687:	8b 45 08             	mov    0x8(%ebp),%eax
  40368a:	8b 40 0c             	mov    0xc(%eax),%eax
  40368d:	83 e8 01             	sub    $0x1,%eax
  403690:	89 45 fc             	mov    %eax,-0x4(%ebp)
  403693:	8b 45 08             	mov    0x8(%ebp),%eax
  403696:	8b 40 10             	mov    0x10(%eax),%eax
  403699:	8b 04 85 00 52 40 00 	mov    0x405200(,%eax,4),%eax
  4036a0:	01 45 fc             	add    %eax,-0x4(%ebp)
  4036a3:	8b 45 f0             	mov    -0x10(%ebp),%eax
  4036a6:	83 e0 03             	and    $0x3,%eax
  4036a9:	85 c0                	test   %eax,%eax
  4036ab:	75 58                	jne    403705 <mktime+0xbc>
  4036ad:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  4036b0:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
  4036b5:	89 c8                	mov    %ecx,%eax
  4036b7:	f7 ea                	imul   %edx
  4036b9:	89 d0                	mov    %edx,%eax
  4036bb:	c1 f8 05             	sar    $0x5,%eax
  4036be:	89 ca                	mov    %ecx,%edx
  4036c0:	c1 fa 1f             	sar    $0x1f,%edx
  4036c3:	29 d0                	sub    %edx,%eax
  4036c5:	6b d0 64             	imul   $0x64,%eax,%edx
  4036c8:	89 c8                	mov    %ecx,%eax
  4036ca:	29 d0                	sub    %edx,%eax
  4036cc:	85 c0                	test   %eax,%eax
  4036ce:	75 26                	jne    4036f6 <mktime+0xad>
  4036d0:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  4036d3:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
  4036d8:	89 c8                	mov    %ecx,%eax
  4036da:	f7 ea                	imul   %edx
  4036dc:	89 d0                	mov    %edx,%eax
  4036de:	c1 f8 07             	sar    $0x7,%eax
  4036e1:	89 ca                	mov    %ecx,%edx
  4036e3:	c1 fa 1f             	sar    $0x1f,%edx
  4036e6:	29 d0                	sub    %edx,%eax
  4036e8:	69 d0 90 01 00 00    	imul   $0x190,%eax,%edx
  4036ee:	89 c8                	mov    %ecx,%eax
  4036f0:	29 d0                	sub    %edx,%eax
  4036f2:	85 c0                	test   %eax,%eax
  4036f4:	75 0f                	jne    403705 <mktime+0xbc>
  4036f6:	8b 45 08             	mov    0x8(%ebp),%eax
  4036f9:	8b 40 10             	mov    0x10(%eax),%eax
  4036fc:	83 f8 02             	cmp    $0x2,%eax
  4036ff:	7e 04                	jle    403705 <mktime+0xbc>
  403701:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  403705:	c7 45 f8 b2 07 00 00 	movl   $0x7b2,-0x8(%ebp)
  40370c:	eb 12                	jmp    403720 <mktime+0xd7>
  40370e:	ff 75 f8             	push   -0x8(%ebp)
  403711:	e8 cf fe ff ff       	call   4035e5 <daysInYear>
  403716:	83 c4 04             	add    $0x4,%esp
  403719:	01 45 fc             	add    %eax,-0x4(%ebp)
  40371c:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  403720:	8b 45 f8             	mov    -0x8(%ebp),%eax
  403723:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  403726:	7c e6                	jl     40370e <mktime+0xc5>
  403728:	8b 45 fc             	mov    -0x4(%ebp),%eax
  40372b:	69 c0 80 51 01 00    	imul   $0x15180,%eax,%eax
  403731:	01 45 f4             	add    %eax,-0xc(%ebp)
  403734:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  403737:	ba 25 49 92 24       	mov    $0x24924925,%edx
  40373c:	89 c8                	mov    %ecx,%eax
  40373e:	f7 e2                	mul    %edx
  403740:	89 c8                	mov    %ecx,%eax
  403742:	29 d0                	sub    %edx,%eax
  403744:	d1 e8                	shr    $1,%eax
  403746:	01 d0                	add    %edx,%eax
  403748:	c1 e8 02             	shr    $0x2,%eax
  40374b:	89 c2                	mov    %eax,%edx
  40374d:	c1 e2 03             	shl    $0x3,%edx
  403750:	29 c2                	sub    %eax,%edx
  403752:	89 c8                	mov    %ecx,%eax
  403754:	29 d0                	sub    %edx,%eax
  403756:	8b 14 85 74 52 40 00 	mov    0x405274(,%eax,4),%edx
  40375d:	8b 45 08             	mov    0x8(%ebp),%eax
  403760:	89 50 18             	mov    %edx,0x18(%eax)
  403763:	8b 45 f4             	mov    -0xc(%ebp),%eax
  403766:	c9                   	leave
  403767:	c3                   	ret

00403768 <localtime>:
  403768:	55                   	push   %ebp
  403769:	89 e5                	mov    %esp,%ebp
  40376b:	83 ec 28             	sub    $0x28,%esp
  40376e:	c7 45 e4 20 90 40 00 	movl   $0x409020,-0x1c(%ebp)
  403775:	83 ec 04             	sub    $0x4,%esp
  403778:	6a 1c                	push   $0x1c
  40377a:	6a 00                	push   $0x0
  40377c:	68 20 90 40 00       	push   $0x409020
  403781:	e8 ca f9 ff ff       	call   403150 <memset>
  403786:	83 c4 10             	add    $0x10,%esp
  403789:	8b 45 08             	mov    0x8(%ebp),%eax
  40378c:	ba 07 45 2e c2       	mov    $0xc22e4507,%edx
  403791:	f7 e2                	mul    %edx
  403793:	89 d0                	mov    %edx,%eax
  403795:	c1 e8 10             	shr    $0x10,%eax
  403798:	89 45 f4             	mov    %eax,-0xc(%ebp)
  40379b:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  40379e:	ba 25 49 92 24       	mov    $0x24924925,%edx
  4037a3:	89 c8                	mov    %ecx,%eax
  4037a5:	f7 e2                	mul    %edx
  4037a7:	89 c8                	mov    %ecx,%eax
  4037a9:	29 d0                	sub    %edx,%eax
  4037ab:	d1 e8                	shr    $1,%eax
  4037ad:	01 d0                	add    %edx,%eax
  4037af:	c1 e8 02             	shr    $0x2,%eax
  4037b2:	89 c2                	mov    %eax,%edx
  4037b4:	c1 e2 03             	shl    $0x3,%edx
  4037b7:	29 c2                	sub    %eax,%edx
  4037b9:	89 c8                	mov    %ecx,%eax
  4037bb:	29 d0                	sub    %edx,%eax
  4037bd:	83 c0 01             	add    $0x1,%eax
  4037c0:	8b 14 85 74 52 40 00 	mov    0x405274(,%eax,4),%edx
  4037c7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  4037ca:	89 50 18             	mov    %edx,0x18(%eax)
  4037cd:	c7 45 f0 b2 07 00 00 	movl   $0x7b2,-0x10(%ebp)
  4037d4:	eb 28                	jmp    4037fe <localtime+0x96>
  4037d6:	83 ec 0c             	sub    $0xc,%esp
  4037d9:	ff 75 f0             	push   -0x10(%ebp)
  4037dc:	e8 04 fe ff ff       	call   4035e5 <daysInYear>
  4037e1:	83 c4 10             	add    $0x10,%esp
  4037e4:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  4037e7:	72 20                	jb     403809 <localtime+0xa1>
  4037e9:	83 ec 0c             	sub    $0xc,%esp
  4037ec:	ff 75 f0             	push   -0x10(%ebp)
  4037ef:	e8 f1 fd ff ff       	call   4035e5 <daysInYear>
  4037f4:	83 c4 10             	add    $0x10,%esp
  4037f7:	29 45 f4             	sub    %eax,-0xc(%ebp)
  4037fa:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  4037fe:	81 7d f4 6c 01 00 00 	cmpl   $0x16c,-0xc(%ebp)
  403805:	77 cf                	ja     4037d6 <localtime+0x6e>
  403807:	eb 01                	jmp    40380a <localtime+0xa2>
  403809:	90                   	nop
  40380a:	81 7d f0 cf 07 00 00 	cmpl   $0x7cf,-0x10(%ebp)
  403811:	7e 0a                	jle    40381d <localtime+0xb5>
  403813:	8b 45 f0             	mov    -0x10(%ebp),%eax
  403816:	2d d0 07 00 00       	sub    $0x7d0,%eax
  40381b:	eb 08                	jmp    403825 <localtime+0xbd>
  40381d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  403820:	2d 6c 07 00 00       	sub    $0x76c,%eax
  403825:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  403828:	89 42 14             	mov    %eax,0x14(%edx)
  40382b:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  403832:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
  403839:	e9 90 00 00 00       	jmp    4038ce <localtime+0x166>
  40383e:	83 7d ec 02          	cmpl   $0x2,-0x14(%ebp)
  403842:	75 62                	jne    4038a6 <localtime+0x13e>
  403844:	8b 45 f0             	mov    -0x10(%ebp),%eax
  403847:	83 e0 03             	and    $0x3,%eax
  40384a:	85 c0                	test   %eax,%eax
  40384c:	75 58                	jne    4038a6 <localtime+0x13e>
  40384e:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  403851:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
  403856:	89 c8                	mov    %ecx,%eax
  403858:	f7 ea                	imul   %edx
  40385a:	89 d0                	mov    %edx,%eax
  40385c:	c1 f8 05             	sar    $0x5,%eax
  40385f:	89 ca                	mov    %ecx,%edx
  403861:	c1 fa 1f             	sar    $0x1f,%edx
  403864:	29 d0                	sub    %edx,%eax
  403866:	6b d0 64             	imul   $0x64,%eax,%edx
  403869:	89 c8                	mov    %ecx,%eax
  40386b:	29 d0                	sub    %edx,%eax
  40386d:	85 c0                	test   %eax,%eax
  40386f:	75 26                	jne    403897 <localtime+0x12f>
  403871:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  403874:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
  403879:	89 c8                	mov    %ecx,%eax
  40387b:	f7 ea                	imul   %edx
  40387d:	89 d0                	mov    %edx,%eax
  40387f:	c1 f8 07             	sar    $0x7,%eax
  403882:	89 ca                	mov    %ecx,%edx
  403884:	c1 fa 1f             	sar    $0x1f,%edx
  403887:	29 d0                	sub    %edx,%eax
  403889:	69 d0 90 01 00 00    	imul   $0x190,%eax,%edx
  40388f:	89 c8                	mov    %ecx,%eax
  403891:	29 d0                	sub    %edx,%eax
  403893:	85 c0                	test   %eax,%eax
  403895:	75 0f                	jne    4038a6 <localtime+0x13e>
  403897:	8b 45 ec             	mov    -0x14(%ebp),%eax
  40389a:	8b 04 85 40 52 40 00 	mov    0x405240(,%eax,4),%eax
  4038a1:	83 c0 01             	add    $0x1,%eax
  4038a4:	eb 0a                	jmp    4038b0 <localtime+0x148>
  4038a6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  4038a9:	8b 04 85 40 52 40 00 	mov    0x405240(,%eax,4),%eax
  4038b0:	89 45 e0             	mov    %eax,-0x20(%ebp)
  4038b3:	8b 45 e0             	mov    -0x20(%ebp),%eax
  4038b6:	3b 45 f4             	cmp    -0xc(%ebp),%eax
  4038b9:	73 1f                	jae    4038da <localtime+0x172>
  4038bb:	8b 45 e0             	mov    -0x20(%ebp),%eax
  4038be:	29 45 f4             	sub    %eax,-0xc(%ebp)
  4038c1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  4038c4:	83 c0 01             	add    $0x1,%eax
  4038c7:	89 45 e8             	mov    %eax,-0x18(%ebp)
  4038ca:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  4038ce:	83 7d ec 0c          	cmpl   $0xc,-0x14(%ebp)
  4038d2:	0f 8e 66 ff ff ff    	jle    40383e <localtime+0xd6>
  4038d8:	eb 01                	jmp    4038db <localtime+0x173>
  4038da:	90                   	nop
  4038db:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  4038de:	8b 55 e8             	mov    -0x18(%ebp),%edx
  4038e1:	89 50 10             	mov    %edx,0x10(%eax)
  4038e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  4038e7:	83 c0 01             	add    $0x1,%eax
  4038ea:	89 c2                	mov    %eax,%edx
  4038ec:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  4038ef:	89 50 0c             	mov    %edx,0xc(%eax)
  4038f2:	8b 4d 08             	mov    0x8(%ebp),%ecx
  4038f5:	ba 07 45 2e c2       	mov    $0xc22e4507,%edx
  4038fa:	89 c8                	mov    %ecx,%eax
  4038fc:	f7 e2                	mul    %edx
  4038fe:	89 d0                	mov    %edx,%eax
  403900:	c1 e8 10             	shr    $0x10,%eax
  403903:	69 c0 80 51 01 00    	imul   $0x15180,%eax,%eax
  403909:	29 c1                	sub    %eax,%ecx
  40390b:	89 ca                	mov    %ecx,%edx
  40390d:	89 55 dc             	mov    %edx,-0x24(%ebp)
  403910:	8b 45 dc             	mov    -0x24(%ebp),%eax
  403913:	ba c5 b3 a2 91       	mov    $0x91a2b3c5,%edx
  403918:	f7 e2                	mul    %edx
  40391a:	89 d0                	mov    %edx,%eax
  40391c:	c1 e8 0b             	shr    $0xb,%eax
  40391f:	89 c2                	mov    %eax,%edx
  403921:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  403924:	89 50 08             	mov    %edx,0x8(%eax)
  403927:	8b 4d dc             	mov    -0x24(%ebp),%ecx
  40392a:	ba c5 b3 a2 91       	mov    $0x91a2b3c5,%edx
  40392f:	89 c8                	mov    %ecx,%eax
  403931:	f7 e2                	mul    %edx
  403933:	89 d0                	mov    %edx,%eax
  403935:	c1 e8 0b             	shr    $0xb,%eax
  403938:	69 d0 10 0e 00 00    	imul   $0xe10,%eax,%edx
  40393e:	89 c8                	mov    %ecx,%eax
  403940:	29 d0                	sub    %edx,%eax
  403942:	ba 89 88 88 88       	mov    $0x88888889,%edx
  403947:	f7 e2                	mul    %edx
  403949:	89 d0                	mov    %edx,%eax
  40394b:	c1 e8 05             	shr    $0x5,%eax
  40394e:	89 c2                	mov    %eax,%edx
  403950:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  403953:	89 50 04             	mov    %edx,0x4(%eax)
  403956:	8b 4d dc             	mov    -0x24(%ebp),%ecx
  403959:	ba 89 88 88 88       	mov    $0x88888889,%edx
  40395e:	89 c8                	mov    %ecx,%eax
  403960:	f7 e2                	mul    %edx
  403962:	89 d0                	mov    %edx,%eax
  403964:	c1 e8 05             	shr    $0x5,%eax
  403967:	6b d0 3c             	imul   $0x3c,%eax,%edx
  40396a:	89 c8                	mov    %ecx,%eax
  40396c:	29 d0                	sub    %edx,%eax
  40396e:	89 c2                	mov    %eax,%edx
  403970:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  403973:	89 10                	mov    %edx,(%eax)
  403975:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  403978:	c9                   	leave
  403979:	c3                   	ret

0040397a <asctime>:
  40397a:	55                   	push   %ebp
  40397b:	89 e5                	mov    %esp,%ebp
  40397d:	57                   	push   %edi
  40397e:	56                   	push   %esi
  40397f:	53                   	push   %ebx
  403980:	83 ec 1c             	sub    $0x1c,%esp
  403983:	83 ec 04             	sub    $0x4,%esp
  403986:	6a 28                	push   $0x28
  403988:	6a 00                	push   $0x0
  40398a:	68 40 90 40 00       	push   $0x409040
  40398f:	e8 bc f7 ff ff       	call   403150 <memset>
  403994:	83 c4 10             	add    $0x10,%esp
  403997:	8b 45 08             	mov    0x8(%ebp),%eax
  40399a:	8b 40 18             	mov    0x18(%eax),%eax
  40399d:	8b 3c 85 a0 52 40 00 	mov    0x4052a0(,%eax,4),%edi
  4039a4:	8b 45 08             	mov    0x8(%ebp),%eax
  4039a7:	8b 30                	mov    (%eax),%esi
  4039a9:	8b 45 08             	mov    0x8(%ebp),%eax
  4039ac:	8b 58 04             	mov    0x4(%eax),%ebx
  4039af:	8b 45 08             	mov    0x8(%ebp),%eax
  4039b2:	8b 48 08             	mov    0x8(%eax),%ecx
  4039b5:	8b 45 08             	mov    0x8(%ebp),%eax
  4039b8:	8b 40 14             	mov    0x14(%eax),%eax
  4039bb:	05 d0 07 00 00       	add    $0x7d0,%eax
  4039c0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  4039c3:	8b 45 08             	mov    0x8(%ebp),%eax
  4039c6:	8b 40 10             	mov    0x10(%eax),%eax
  4039c9:	8b 14 85 c0 52 40 00 	mov    0x4052c0(,%eax,4),%edx
  4039d0:	8b 45 08             	mov    0x8(%ebp),%eax
  4039d3:	8b 40 0c             	mov    0xc(%eax),%eax
  4039d6:	83 ec 0c             	sub    $0xc,%esp
  4039d9:	57                   	push   %edi
  4039da:	56                   	push   %esi
  4039db:	53                   	push   %ebx
  4039dc:	51                   	push   %ecx
  4039dd:	ff 75 e4             	push   -0x1c(%ebp)
  4039e0:	52                   	push   %edx
  4039e1:	50                   	push   %eax
  4039e2:	68 0c 72 40 00       	push   $0x40720c
  4039e7:	68 40 90 40 00       	push   $0x409040
  4039ec:	e8 63 eb ff ff       	call   402554 <sprintf>
  4039f1:	83 c4 30             	add    $0x30,%esp
  4039f4:	b8 40 90 40 00       	mov    $0x409040,%eax
  4039f9:	8d 65 f4             	lea    -0xc(%ebp),%esp
  4039fc:	5b                   	pop    %ebx
  4039fd:	5e                   	pop    %esi
  4039fe:	5f                   	pop    %edi
  4039ff:	5d                   	pop    %ebp
  403a00:	c3                   	ret

00403a01 <getFilename>:
  403a01:	83 ec 1c             	sub    $0x1c,%esp
  403a04:	83 ec 0c             	sub    $0xc,%esp
  403a07:	ff 74 24 2c          	push   0x2c(%esp)
  403a0b:	e8 18 f7 ff ff       	call   403128 <strlen>
  403a10:	83 c4 10             	add    $0x10,%esp
  403a13:	89 44 24 08          	mov    %eax,0x8(%esp)
  403a17:	8b 44 24 08          	mov    0x8(%esp),%eax
  403a1b:	8d 50 ff             	lea    -0x1(%eax),%edx
  403a1e:	8b 44 24 20          	mov    0x20(%esp),%eax
  403a22:	01 d0                	add    %edx,%eax
  403a24:	89 44 24 0c          	mov    %eax,0xc(%esp)
  403a28:	eb 05                	jmp    403a2f <getFilename+0x2e>
  403a2a:	83 6c 24 0c 01       	subl   $0x1,0xc(%esp)
  403a2f:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403a33:	3b 44 24 20          	cmp    0x20(%esp),%eax
  403a37:	72 0b                	jb     403a44 <getFilename+0x43>
  403a39:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403a3d:	0f b6 00             	movzbl (%eax),%eax
  403a40:	3c 2f                	cmp    $0x2f,%al
  403a42:	75 e6                	jne    403a2a <getFilename+0x29>
  403a44:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  403a49:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403a4d:	83 c4 1c             	add    $0x1c,%esp
  403a50:	c3                   	ret

00403a51 <InitCommandTree>:
  403a51:	83 ec 10             	sub    $0x10,%esp
  403a54:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  403a5b:	00 
  403a5c:	c7 05 c8 9d 40 00 00 	movl   $0x0,0x409dc8
  403a63:	00 00 00 
  403a66:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  403a6d:	00 
  403a6e:	e9 83 00 00 00       	jmp    403af6 <InitCommandTree+0xa5>
  403a73:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403a77:	6b c0 44             	imul   $0x44,%eax,%eax
  403a7a:	05 90 90 40 00       	add    $0x409090,%eax
  403a7f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  403a85:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403a89:	6b c0 44             	imul   $0x44,%eax,%eax
  403a8c:	05 80 90 40 00       	add    $0x409080,%eax
  403a91:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  403a97:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403a9b:	6b c0 44             	imul   $0x44,%eax,%eax
  403a9e:	05 94 90 40 00       	add    $0x409094,%eax
  403aa3:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  403aa9:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403aad:	6b c0 44             	imul   $0x44,%eax,%eax
  403ab0:	05 98 90 40 00       	add    $0x409098,%eax
  403ab5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  403abb:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403abf:	6b c0 44             	imul   $0x44,%eax,%eax
  403ac2:	05 88 90 40 00       	add    $0x409088,%eax
  403ac7:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  403acd:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403ad1:	6b c0 44             	imul   $0x44,%eax,%eax
  403ad4:	05 8c 90 40 00       	add    $0x40908c,%eax
  403ad9:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  403adf:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403ae3:	6b c0 44             	imul   $0x44,%eax,%eax
  403ae6:	05 84 90 40 00       	add    $0x409084,%eax
  403aeb:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  403af1:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  403af6:	83 7c 24 0c 31       	cmpl   $0x31,0xc(%esp)
  403afb:	0f 8e 72 ff ff ff    	jle    403a73 <InitCommandTree+0x22>
  403b01:	90                   	nop
  403b02:	90                   	nop
  403b03:	83 c4 10             	add    $0x10,%esp
  403b06:	c3                   	ret

00403b07 <GetNextFreeCommandNode>:
  403b07:	a1 c8 9d 40 00       	mov    0x409dc8,%eax
  403b0c:	8d 50 01             	lea    0x1(%eax),%edx
  403b0f:	89 15 c8 9d 40 00    	mov    %edx,0x409dc8
  403b15:	c3                   	ret

00403b16 <CreateSimpleNode>:
  403b16:	53                   	push   %ebx
  403b17:	83 ec 18             	sub    $0x18,%esp
  403b1a:	e8 e8 ff ff ff       	call   403b07 <GetNextFreeCommandNode>
  403b1f:	89 44 24 08          	mov    %eax,0x8(%esp)
  403b23:	8b 44 24 08          	mov    0x8(%esp),%eax
  403b27:	6b c0 44             	imul   $0x44,%eax,%eax
  403b2a:	05 80 90 40 00       	add    $0x409080,%eax
  403b2f:	89 44 24 04          	mov    %eax,0x4(%esp)
  403b33:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  403b3a:	00 
  403b3b:	8b 44 24 04          	mov    0x4(%esp),%eax
  403b3f:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  403b46:	8b 44 24 04          	mov    0x4(%esp),%eax
  403b4a:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
  403b51:	8b 44 24 04          	mov    0x4(%esp),%eax
  403b55:	c7 00 08 00 00 00    	movl   $0x8,(%eax)
  403b5b:	8b 44 24 28          	mov    0x28(%esp),%eax
  403b5f:	83 e0 10             	and    $0x10,%eax
  403b62:	85 c0                	test   %eax,%eax
  403b64:	7e 13                	jle    403b79 <CreateSimpleNode+0x63>
  403b66:	8b 44 24 04          	mov    0x4(%esp),%eax
  403b6a:	8b 40 04             	mov    0x4(%eax),%eax
  403b6d:	83 c8 10             	or     $0x10,%eax
  403b70:	89 c2                	mov    %eax,%edx
  403b72:	8b 44 24 04          	mov    0x4(%esp),%eax
  403b76:	89 50 04             	mov    %edx,0x4(%eax)
  403b79:	8b 44 24 28          	mov    0x28(%esp),%eax
  403b7d:	83 e0 08             	and    $0x8,%eax
  403b80:	85 c0                	test   %eax,%eax
  403b82:	7e 13                	jle    403b97 <CreateSimpleNode+0x81>
  403b84:	8b 44 24 04          	mov    0x4(%esp),%eax
  403b88:	8b 40 04             	mov    0x4(%eax),%eax
  403b8b:	83 c8 08             	or     $0x8,%eax
  403b8e:	89 c2                	mov    %eax,%edx
  403b90:	8b 44 24 04          	mov    0x4(%esp),%eax
  403b94:	89 50 04             	mov    %edx,0x4(%eax)
  403b97:	8b 44 24 20          	mov    0x20(%esp),%eax
  403b9b:	8d 50 01             	lea    0x1(%eax),%edx
  403b9e:	89 54 24 20          	mov    %edx,0x20(%esp)
  403ba2:	8b 14 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%edx
  403ba9:	8b 44 24 04          	mov    0x4(%esp),%eax
  403bad:	89 50 10             	mov    %edx,0x10(%eax)
  403bb0:	8b 44 24 04          	mov    0x4(%esp),%eax
  403bb4:	8b 40 10             	mov    0x10(%eax),%eax
  403bb7:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
  403bbb:	8d 53 01             	lea    0x1(%ebx),%edx
  403bbe:	89 54 24 0c          	mov    %edx,0xc(%esp)
  403bc2:	83 ec 0c             	sub    $0xc,%esp
  403bc5:	50                   	push   %eax
  403bc6:	e8 36 fe ff ff       	call   403a01 <getFilename>
  403bcb:	83 c4 10             	add    $0x10,%esp
  403bce:	8b 54 24 04          	mov    0x4(%esp),%edx
  403bd2:	8d 4b 04             	lea    0x4(%ebx),%ecx
  403bd5:	89 44 8a 0c          	mov    %eax,0xc(%edx,%ecx,4)
  403bd9:	e9 72 01 00 00       	jmp    403d50 <CreateSimpleNode+0x23a>
  403bde:	8b 44 24 20          	mov    0x20(%esp),%eax
  403be2:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  403be9:	0f b6 00             	movzbl (%eax),%eax
  403bec:	88 44 24 03          	mov    %al,0x3(%esp)
  403bf0:	8b 44 24 20          	mov    0x20(%esp),%eax
  403bf4:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  403bfb:	83 c0 01             	add    $0x1,%eax
  403bfe:	0f b6 00             	movzbl (%eax),%eax
  403c01:	84 c0                	test   %al,%al
  403c03:	0f 85 1b 01 00 00    	jne    403d24 <CreateSimpleNode+0x20e>
  403c09:	0f be 44 24 03       	movsbl 0x3(%esp),%eax
  403c0e:	83 f8 3c             	cmp    $0x3c,%eax
  403c11:	74 0a                	je     403c1d <CreateSimpleNode+0x107>
  403c13:	83 f8 3e             	cmp    $0x3e,%eax
  403c16:	74 41                	je     403c59 <CreateSimpleNode+0x143>
  403c18:	e9 e4 00 00 00       	jmp    403d01 <CreateSimpleNode+0x1eb>
  403c1d:	8b 44 24 20          	mov    0x20(%esp),%eax
  403c21:	3b 44 24 24          	cmp    0x24(%esp),%eax
  403c25:	0f 8d 1c 01 00 00    	jge    403d47 <CreateSimpleNode+0x231>
  403c2b:	8b 44 24 04          	mov    0x4(%esp),%eax
  403c2f:	8b 40 14             	mov    0x14(%eax),%eax
  403c32:	85 c0                	test   %eax,%eax
  403c34:	0f 85 0d 01 00 00    	jne    403d47 <CreateSimpleNode+0x231>
  403c3a:	8b 44 24 20          	mov    0x20(%esp),%eax
  403c3e:	83 c0 01             	add    $0x1,%eax
  403c41:	8b 14 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%edx
  403c48:	8b 44 24 04          	mov    0x4(%esp),%eax
  403c4c:	89 50 14             	mov    %edx,0x14(%eax)
  403c4f:	83 44 24 20 01       	addl   $0x1,0x20(%esp)
  403c54:	e9 ee 00 00 00       	jmp    403d47 <CreateSimpleNode+0x231>
  403c59:	8b 44 24 20          	mov    0x20(%esp),%eax
  403c5d:	83 c0 01             	add    $0x1,%eax
  403c60:	39 44 24 24          	cmp    %eax,0x24(%esp)
  403c64:	7e 67                	jle    403ccd <CreateSimpleNode+0x1b7>
  403c66:	8b 44 24 04          	mov    0x4(%esp),%eax
  403c6a:	8b 40 18             	mov    0x18(%eax),%eax
  403c6d:	85 c0                	test   %eax,%eax
  403c6f:	75 5c                	jne    403ccd <CreateSimpleNode+0x1b7>
  403c71:	8b 44 24 20          	mov    0x20(%esp),%eax
  403c75:	83 c0 01             	add    $0x1,%eax
  403c78:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  403c7f:	0f b6 00             	movzbl (%eax),%eax
  403c82:	3c 3e                	cmp    $0x3e,%al
  403c84:	75 78                	jne    403cfe <CreateSimpleNode+0x1e8>
  403c86:	8b 44 24 20          	mov    0x20(%esp),%eax
  403c8a:	83 c0 01             	add    $0x1,%eax
  403c8d:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  403c94:	83 c0 01             	add    $0x1,%eax
  403c97:	0f b6 00             	movzbl (%eax),%eax
  403c9a:	84 c0                	test   %al,%al
  403c9c:	75 60                	jne    403cfe <CreateSimpleNode+0x1e8>
  403c9e:	8b 44 24 20          	mov    0x20(%esp),%eax
  403ca2:	83 c0 02             	add    $0x2,%eax
  403ca5:	8b 14 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%edx
  403cac:	8b 44 24 04          	mov    0x4(%esp),%eax
  403cb0:	89 50 18             	mov    %edx,0x18(%eax)
  403cb3:	8b 44 24 04          	mov    0x4(%esp),%eax
  403cb7:	8b 40 04             	mov    0x4(%eax),%eax
  403cba:	83 c8 01             	or     $0x1,%eax
  403cbd:	89 c2                	mov    %eax,%edx
  403cbf:	8b 44 24 04          	mov    0x4(%esp),%eax
  403cc3:	89 50 04             	mov    %edx,0x4(%eax)
  403cc6:	83 44 24 20 02       	addl   $0x2,0x20(%esp)
  403ccb:	eb 31                	jmp    403cfe <CreateSimpleNode+0x1e8>
  403ccd:	8b 44 24 20          	mov    0x20(%esp),%eax
  403cd1:	3b 44 24 24          	cmp    0x24(%esp),%eax
  403cd5:	7d 73                	jge    403d4a <CreateSimpleNode+0x234>
  403cd7:	8b 44 24 04          	mov    0x4(%esp),%eax
  403cdb:	8b 40 18             	mov    0x18(%eax),%eax
  403cde:	85 c0                	test   %eax,%eax
  403ce0:	75 68                	jne    403d4a <CreateSimpleNode+0x234>
  403ce2:	8b 44 24 20          	mov    0x20(%esp),%eax
  403ce6:	83 c0 01             	add    $0x1,%eax
  403ce9:	8b 14 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%edx
  403cf0:	8b 44 24 04          	mov    0x4(%esp),%eax
  403cf4:	89 50 18             	mov    %edx,0x18(%eax)
  403cf7:	83 44 24 20 01       	addl   $0x1,0x20(%esp)
  403cfc:	eb 4c                	jmp    403d4a <CreateSimpleNode+0x234>
  403cfe:	90                   	nop
  403cff:	eb 49                	jmp    403d4a <CreateSimpleNode+0x234>
  403d01:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403d05:	8d 50 01             	lea    0x1(%eax),%edx
  403d08:	89 54 24 0c          	mov    %edx,0xc(%esp)
  403d0c:	8b 54 24 20          	mov    0x20(%esp),%edx
  403d10:	8b 0c 95 20 a2 40 00 	mov    0x40a220(,%edx,4),%ecx
  403d17:	8b 54 24 04          	mov    0x4(%esp),%edx
  403d1b:	83 c0 04             	add    $0x4,%eax
  403d1e:	89 4c 82 0c          	mov    %ecx,0xc(%edx,%eax,4)
  403d22:	eb 27                	jmp    403d4b <CreateSimpleNode+0x235>
  403d24:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403d28:	8d 50 01             	lea    0x1(%eax),%edx
  403d2b:	89 54 24 0c          	mov    %edx,0xc(%esp)
  403d2f:	8b 54 24 20          	mov    0x20(%esp),%edx
  403d33:	8b 0c 95 20 a2 40 00 	mov    0x40a220(,%edx,4),%ecx
  403d3a:	8b 54 24 04          	mov    0x4(%esp),%edx
  403d3e:	83 c0 04             	add    $0x4,%eax
  403d41:	89 4c 82 0c          	mov    %ecx,0xc(%edx,%eax,4)
  403d45:	eb 04                	jmp    403d4b <CreateSimpleNode+0x235>
  403d47:	90                   	nop
  403d48:	eb 01                	jmp    403d4b <CreateSimpleNode+0x235>
  403d4a:	90                   	nop
  403d4b:	83 44 24 20 01       	addl   $0x1,0x20(%esp)
  403d50:	8b 44 24 20          	mov    0x20(%esp),%eax
  403d54:	3b 44 24 24          	cmp    0x24(%esp),%eax
  403d58:	0f 8e 80 fe ff ff    	jle    403bde <CreateSimpleNode+0xc8>
  403d5e:	8b 44 24 04          	mov    0x4(%esp),%eax
  403d62:	8b 54 24 0c          	mov    0xc(%esp),%edx
  403d66:	83 c2 04             	add    $0x4,%edx
  403d69:	c7 44 90 0c 00 00 00 	movl   $0x0,0xc(%eax,%edx,4)
  403d70:	00 
  403d71:	8b 44 24 08          	mov    0x8(%esp),%eax
  403d75:	83 c4 18             	add    $0x18,%esp
  403d78:	5b                   	pop    %ebx
  403d79:	c3                   	ret

00403d7a <CreateCurveNode>:
  403d7a:	83 ec 2c             	sub    $0x2c,%esp
  403d7d:	e8 85 fd ff ff       	call   403b07 <GetNextFreeCommandNode>
  403d82:	89 44 24 18          	mov    %eax,0x18(%esp)
  403d86:	8b 44 24 18          	mov    0x18(%esp),%eax
  403d8a:	6b c0 44             	imul   $0x44,%eax,%eax
  403d8d:	05 80 90 40 00       	add    $0x409080,%eax
  403d92:	89 44 24 14          	mov    %eax,0x14(%esp)
  403d96:	8b 44 24 34          	mov    0x34(%esp),%eax
  403d9a:	89 44 24 10          	mov    %eax,0x10(%esp)
  403d9e:	8b 44 24 14          	mov    0x14(%esp),%eax
  403da2:	c7 00 04 00 00 00    	movl   $0x4,(%eax)
  403da8:	8b 44 24 14          	mov    0x14(%esp),%eax
  403dac:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  403db3:	8b 44 24 14          	mov    0x14(%esp),%eax
  403db7:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
  403dbe:	eb 05                	jmp    403dc5 <CreateCurveNode+0x4b>
  403dc0:	83 6c 24 34 01       	subl   $0x1,0x34(%esp)
  403dc5:	8b 44 24 34          	mov    0x34(%esp),%eax
  403dc9:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  403dd0:	0f b6 00             	movzbl (%eax),%eax
  403dd3:	3c 29                	cmp    $0x29,%al
  403dd5:	75 e9                	jne    403dc0 <CreateCurveNode+0x46>
  403dd7:	8b 44 24 34          	mov    0x34(%esp),%eax
  403ddb:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  403de2:	83 c0 01             	add    $0x1,%eax
  403de5:	0f b6 00             	movzbl (%eax),%eax
  403de8:	84 c0                	test   %al,%al
  403dea:	75 d4                	jne    403dc0 <CreateCurveNode+0x46>
  403dec:	8b 44 24 34          	mov    0x34(%esp),%eax
  403df0:	3b 44 24 10          	cmp    0x10(%esp),%eax
  403df4:	0f 8d 53 01 00 00    	jge    403f4d <CreateCurveNode+0x1d3>
  403dfa:	8b 44 24 34          	mov    0x34(%esp),%eax
  403dfe:	83 c0 01             	add    $0x1,%eax
  403e01:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  403e05:	e9 35 01 00 00       	jmp    403f3f <CreateCurveNode+0x1c5>
  403e0a:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  403e0e:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  403e15:	0f b6 00             	movzbl (%eax),%eax
  403e18:	88 44 24 0f          	mov    %al,0xf(%esp)
  403e1c:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  403e20:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  403e27:	83 c0 01             	add    $0x1,%eax
  403e2a:	0f b6 00             	movzbl (%eax),%eax
  403e2d:	84 c0                	test   %al,%al
  403e2f:	0f 85 05 01 00 00    	jne    403f3a <CreateCurveNode+0x1c0>
  403e35:	0f be 44 24 0f       	movsbl 0xf(%esp),%eax
  403e3a:	83 f8 3c             	cmp    $0x3c,%eax
  403e3d:	74 0a                	je     403e49 <CreateCurveNode+0xcf>
  403e3f:	83 f8 3e             	cmp    $0x3e,%eax
  403e42:	74 41                	je     403e85 <CreateCurveNode+0x10b>
  403e44:	e9 f1 00 00 00       	jmp    403f3a <CreateCurveNode+0x1c0>
  403e49:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  403e4d:	3b 44 24 10          	cmp    0x10(%esp),%eax
  403e51:	0f 8d df 00 00 00    	jge    403f36 <CreateCurveNode+0x1bc>
  403e57:	8b 44 24 14          	mov    0x14(%esp),%eax
  403e5b:	8b 40 14             	mov    0x14(%eax),%eax
  403e5e:	85 c0                	test   %eax,%eax
  403e60:	75 10                	jne    403e72 <CreateCurveNode+0xf8>
  403e62:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  403e66:	83 c0 01             	add    $0x1,%eax
  403e69:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  403e70:	eb 07                	jmp    403e79 <CreateCurveNode+0xff>
  403e72:	8b 44 24 14          	mov    0x14(%esp),%eax
  403e76:	8b 40 14             	mov    0x14(%eax),%eax
  403e79:	8b 54 24 14          	mov    0x14(%esp),%edx
  403e7d:	89 42 14             	mov    %eax,0x14(%edx)
  403e80:	e9 b1 00 00 00       	jmp    403f36 <CreateCurveNode+0x1bc>
  403e85:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  403e89:	83 c0 01             	add    $0x1,%eax
  403e8c:	39 44 24 10          	cmp    %eax,0x10(%esp)
  403e90:	7e 6f                	jle    403f01 <CreateCurveNode+0x187>
  403e92:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  403e96:	83 c0 01             	add    $0x1,%eax
  403e99:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  403ea0:	0f b6 00             	movzbl (%eax),%eax
  403ea3:	3c 3e                	cmp    $0x3e,%al
  403ea5:	0f 85 8e 00 00 00    	jne    403f39 <CreateCurveNode+0x1bf>
  403eab:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  403eaf:	83 c0 01             	add    $0x1,%eax
  403eb2:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  403eb9:	83 c0 01             	add    $0x1,%eax
  403ebc:	0f b6 00             	movzbl (%eax),%eax
  403ebf:	84 c0                	test   %al,%al
  403ec1:	75 76                	jne    403f39 <CreateCurveNode+0x1bf>
  403ec3:	8b 44 24 14          	mov    0x14(%esp),%eax
  403ec7:	8b 40 18             	mov    0x18(%eax),%eax
  403eca:	85 c0                	test   %eax,%eax
  403ecc:	75 10                	jne    403ede <CreateCurveNode+0x164>
  403ece:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  403ed2:	83 c0 02             	add    $0x2,%eax
  403ed5:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  403edc:	eb 07                	jmp    403ee5 <CreateCurveNode+0x16b>
  403ede:	8b 44 24 14          	mov    0x14(%esp),%eax
  403ee2:	8b 40 18             	mov    0x18(%eax),%eax
  403ee5:	8b 54 24 14          	mov    0x14(%esp),%edx
  403ee9:	89 42 18             	mov    %eax,0x18(%edx)
  403eec:	8b 44 24 14          	mov    0x14(%esp),%eax
  403ef0:	8b 40 04             	mov    0x4(%eax),%eax
  403ef3:	83 c8 01             	or     $0x1,%eax
  403ef6:	89 c2                	mov    %eax,%edx
  403ef8:	8b 44 24 14          	mov    0x14(%esp),%eax
  403efc:	89 50 04             	mov    %edx,0x4(%eax)
  403eff:	eb 38                	jmp    403f39 <CreateCurveNode+0x1bf>
  403f01:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  403f05:	3b 44 24 10          	cmp    0x10(%esp),%eax
  403f09:	7d 2e                	jge    403f39 <CreateCurveNode+0x1bf>
  403f0b:	8b 44 24 14          	mov    0x14(%esp),%eax
  403f0f:	8b 40 18             	mov    0x18(%eax),%eax
  403f12:	85 c0                	test   %eax,%eax
  403f14:	75 10                	jne    403f26 <CreateCurveNode+0x1ac>
  403f16:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  403f1a:	83 c0 01             	add    $0x1,%eax
  403f1d:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  403f24:	eb 07                	jmp    403f2d <CreateCurveNode+0x1b3>
  403f26:	8b 44 24 14          	mov    0x14(%esp),%eax
  403f2a:	8b 40 18             	mov    0x18(%eax),%eax
  403f2d:	8b 54 24 14          	mov    0x14(%esp),%edx
  403f31:	89 42 18             	mov    %eax,0x18(%edx)
  403f34:	eb 03                	jmp    403f39 <CreateCurveNode+0x1bf>
  403f36:	90                   	nop
  403f37:	eb 01                	jmp    403f3a <CreateCurveNode+0x1c0>
  403f39:	90                   	nop
  403f3a:	83 44 24 1c 01       	addl   $0x1,0x1c(%esp)
  403f3f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  403f43:	3b 44 24 10          	cmp    0x10(%esp),%eax
  403f47:	0f 8e bd fe ff ff    	jle    403e0a <CreateCurveNode+0x90>
  403f4d:	8b 44 24 34          	mov    0x34(%esp),%eax
  403f51:	8d 50 ff             	lea    -0x1(%eax),%edx
  403f54:	8b 44 24 30          	mov    0x30(%esp),%eax
  403f58:	83 c0 01             	add    $0x1,%eax
  403f5b:	83 ec 04             	sub    $0x4,%esp
  403f5e:	6a 10                	push   $0x10
  403f60:	52                   	push   %edx
  403f61:	50                   	push   %eax
  403f62:	e8 11 01 00 00       	call   404078 <AnalizeCommand>
  403f67:	83 c4 10             	add    $0x10,%esp
  403f6a:	8b 54 24 14          	mov    0x14(%esp),%edx
  403f6e:	89 42 08             	mov    %eax,0x8(%edx)
  403f71:	8b 44 24 18          	mov    0x18(%esp),%eax
  403f75:	83 c4 2c             	add    $0x2c,%esp
  403f78:	c3                   	ret

00403f79 <CreatePipeNode>:
  403f79:	83 ec 1c             	sub    $0x1c,%esp
  403f7c:	e8 86 fb ff ff       	call   403b07 <GetNextFreeCommandNode>
  403f81:	89 44 24 0c          	mov    %eax,0xc(%esp)
  403f85:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403f89:	6b c0 44             	imul   $0x44,%eax,%eax
  403f8c:	05 80 90 40 00       	add    $0x409080,%eax
  403f91:	89 44 24 08          	mov    %eax,0x8(%esp)
  403f95:	8b 44 24 08          	mov    0x8(%esp),%eax
  403f99:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  403f9f:	8b 44 24 28          	mov    0x28(%esp),%eax
  403fa3:	83 e8 01             	sub    $0x1,%eax
  403fa6:	83 ec 04             	sub    $0x4,%esp
  403fa9:	6a 00                	push   $0x0
  403fab:	50                   	push   %eax
  403fac:	ff 74 24 2c          	push   0x2c(%esp)
  403fb0:	e8 c3 00 00 00       	call   404078 <AnalizeCommand>
  403fb5:	83 c4 10             	add    $0x10,%esp
  403fb8:	8b 54 24 08          	mov    0x8(%esp),%edx
  403fbc:	89 42 08             	mov    %eax,0x8(%edx)
  403fbf:	8b 44 24 28          	mov    0x28(%esp),%eax
  403fc3:	83 c0 01             	add    $0x1,%eax
  403fc6:	83 ec 04             	sub    $0x4,%esp
  403fc9:	ff 74 24 30          	push   0x30(%esp)
  403fcd:	ff 74 24 2c          	push   0x2c(%esp)
  403fd1:	50                   	push   %eax
  403fd2:	e8 a1 00 00 00       	call   404078 <AnalizeCommand>
  403fd7:	83 c4 10             	add    $0x10,%esp
  403fda:	8b 54 24 08          	mov    0x8(%esp),%edx
  403fde:	89 42 0c             	mov    %eax,0xc(%edx)
  403fe1:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403fe5:	83 c4 1c             	add    $0x1c,%esp
  403fe8:	c3                   	ret

00403fe9 <CreateTableNode>:
  403fe9:	83 ec 1c             	sub    $0x1c,%esp
  403fec:	e8 16 fb ff ff       	call   403b07 <GetNextFreeCommandNode>
  403ff1:	89 44 24 0c          	mov    %eax,0xc(%esp)
  403ff5:	8b 44 24 0c          	mov    0xc(%esp),%eax
  403ff9:	6b c0 44             	imul   $0x44,%eax,%eax
  403ffc:	05 80 90 40 00       	add    $0x409080,%eax
  404001:	89 44 24 08          	mov    %eax,0x8(%esp)
  404005:	8b 44 24 08          	mov    0x8(%esp),%eax
  404009:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  40400f:	8b 44 24 28          	mov    0x28(%esp),%eax
  404013:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  40401a:	0f b6 00             	movzbl (%eax),%eax
  40401d:	3c 26                	cmp    $0x26,%al
  40401f:	75 05                	jne    404026 <CreateTableNode+0x3d>
  404021:	83 4c 24 2c 08       	orl    $0x8,0x2c(%esp)
  404026:	8b 44 24 28          	mov    0x28(%esp),%eax
  40402a:	83 e8 01             	sub    $0x1,%eax
  40402d:	83 ec 04             	sub    $0x4,%esp
  404030:	ff 74 24 30          	push   0x30(%esp)
  404034:	50                   	push   %eax
  404035:	ff 74 24 2c          	push   0x2c(%esp)
  404039:	e8 3a 00 00 00       	call   404078 <AnalizeCommand>
  40403e:	83 c4 10             	add    $0x10,%esp
  404041:	8b 54 24 08          	mov    0x8(%esp),%edx
  404045:	89 42 08             	mov    %eax,0x8(%edx)
  404048:	8b 44 24 2c          	mov    0x2c(%esp),%eax
  40404c:	83 e0 f7             	and    $0xfffffff7,%eax
  40404f:	89 c2                	mov    %eax,%edx
  404051:	8b 44 24 28          	mov    0x28(%esp),%eax
  404055:	83 c0 01             	add    $0x1,%eax
  404058:	83 ec 04             	sub    $0x4,%esp
  40405b:	52                   	push   %edx
  40405c:	ff 74 24 2c          	push   0x2c(%esp)
  404060:	50                   	push   %eax
  404061:	e8 12 00 00 00       	call   404078 <AnalizeCommand>
  404066:	83 c4 10             	add    $0x10,%esp
  404069:	8b 54 24 08          	mov    0x8(%esp),%edx
  40406d:	89 42 0c             	mov    %eax,0xc(%edx)
  404070:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404074:	83 c4 1c             	add    $0x1c,%esp
  404077:	c3                   	ret

00404078 <AnalizeCommand>:
  404078:	83 ec 2c             	sub    $0x2c,%esp
  40407b:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
  404082:	00 
  404083:	8b 44 24 34          	mov    0x34(%esp),%eax
  404087:	83 c0 01             	add    $0x1,%eax
  40408a:	89 44 24 10          	mov    %eax,0x10(%esp)
  40408e:	8b 44 24 34          	mov    0x34(%esp),%eax
  404092:	83 c0 01             	add    $0x1,%eax
  404095:	89 44 24 0c          	mov    %eax,0xc(%esp)
  404099:	8b 44 24 34          	mov    0x34(%esp),%eax
  40409d:	83 c0 01             	add    $0x1,%eax
  4040a0:	89 44 24 14          	mov    %eax,0x14(%esp)
  4040a4:	8b 44 24 30          	mov    0x30(%esp),%eax
  4040a8:	3b 44 24 34          	cmp    0x34(%esp),%eax
  4040ac:	7e 0f                	jle    4040bd <AnalizeCommand+0x45>
  4040ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4040b3:	e9 97 01 00 00       	jmp    40424f <AnalizeCommand+0x1d7>
  4040b8:	83 44 24 30 01       	addl   $0x1,0x30(%esp)
  4040bd:	8b 44 24 30          	mov    0x30(%esp),%eax
  4040c1:	3b 44 24 34          	cmp    0x34(%esp),%eax
  4040c5:	7f 4b                	jg     404112 <AnalizeCommand+0x9a>
  4040c7:	8b 44 24 30          	mov    0x30(%esp),%eax
  4040cb:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  4040d2:	83 c0 01             	add    $0x1,%eax
  4040d5:	0f b6 00             	movzbl (%eax),%eax
  4040d8:	84 c0                	test   %al,%al
  4040da:	75 36                	jne    404112 <AnalizeCommand+0x9a>
  4040dc:	8b 44 24 30          	mov    0x30(%esp),%eax
  4040e0:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  4040e7:	0f b6 00             	movzbl (%eax),%eax
  4040ea:	3c 26                	cmp    $0x26,%al
  4040ec:	74 ca                	je     4040b8 <AnalizeCommand+0x40>
  4040ee:	8b 44 24 30          	mov    0x30(%esp),%eax
  4040f2:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  4040f9:	0f b6 00             	movzbl (%eax),%eax
  4040fc:	3c 3b                	cmp    $0x3b,%al
  4040fe:	74 b8                	je     4040b8 <AnalizeCommand+0x40>
  404100:	8b 44 24 30          	mov    0x30(%esp),%eax
  404104:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  40410b:	0f b6 00             	movzbl (%eax),%eax
  40410e:	3c 7c                	cmp    $0x7c,%al
  404110:	74 a6                	je     4040b8 <AnalizeCommand+0x40>
  404112:	8b 44 24 30          	mov    0x30(%esp),%eax
  404116:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  40411a:	e9 b5 00 00 00       	jmp    4041d4 <AnalizeCommand+0x15c>
  40411f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  404123:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  40412a:	0f b6 00             	movzbl (%eax),%eax
  40412d:	88 44 24 0b          	mov    %al,0xb(%esp)
  404131:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  404135:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  40413c:	83 c0 01             	add    $0x1,%eax
  40413f:	0f b6 00             	movzbl (%eax),%eax
  404142:	84 c0                	test   %al,%al
  404144:	0f 85 85 00 00 00    	jne    4041cf <AnalizeCommand+0x157>
  40414a:	0f be 44 24 0b       	movsbl 0xb(%esp),%eax
  40414f:	83 f8 7c             	cmp    $0x7c,%eax
  404152:	74 47                	je     40419b <AnalizeCommand+0x123>
  404154:	83 f8 7c             	cmp    $0x7c,%eax
  404157:	7f 76                	jg     4041cf <AnalizeCommand+0x157>
  404159:	83 f8 3b             	cmp    $0x3b,%eax
  40415c:	74 19                	je     404177 <AnalizeCommand+0xff>
  40415e:	83 f8 3b             	cmp    $0x3b,%eax
  404161:	7f 6c                	jg     4041cf <AnalizeCommand+0x157>
  404163:	83 f8 26             	cmp    $0x26,%eax
  404166:	74 0f                	je     404177 <AnalizeCommand+0xff>
  404168:	83 f8 26             	cmp    $0x26,%eax
  40416b:	7c 62                	jl     4041cf <AnalizeCommand+0x157>
  40416d:	83 e8 28             	sub    $0x28,%eax
  404170:	83 f8 01             	cmp    $0x1,%eax
  404173:	77 5a                	ja     4041cf <AnalizeCommand+0x157>
  404175:	eb 3f                	jmp    4041b6 <AnalizeCommand+0x13e>
  404177:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
  40417c:	75 4d                	jne    4041cb <AnalizeCommand+0x153>
  40417e:	ff 74 24 38          	push   0x38(%esp)
  404182:	ff 74 24 20          	push   0x20(%esp)
  404186:	ff 74 24 3c          	push   0x3c(%esp)
  40418a:	ff 74 24 3c          	push   0x3c(%esp)
  40418e:	e8 56 fe ff ff       	call   403fe9 <CreateTableNode>
  404193:	83 c4 10             	add    $0x10,%esp
  404196:	e9 b4 00 00 00       	jmp    40424f <AnalizeCommand+0x1d7>
  40419b:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
  4041a0:	75 2c                	jne    4041ce <AnalizeCommand+0x156>
  4041a2:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  4041a6:	3b 44 24 14          	cmp    0x14(%esp),%eax
  4041aa:	7d 22                	jge    4041ce <AnalizeCommand+0x156>
  4041ac:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  4041b0:	89 44 24 14          	mov    %eax,0x14(%esp)
  4041b4:	eb 18                	jmp    4041ce <AnalizeCommand+0x156>
  4041b6:	80 7c 24 0b 28       	cmpb   $0x28,0xb(%esp)
  4041bb:	75 07                	jne    4041c4 <AnalizeCommand+0x14c>
  4041bd:	83 44 24 18 01       	addl   $0x1,0x18(%esp)
  4041c2:	eb 0b                	jmp    4041cf <AnalizeCommand+0x157>
  4041c4:	83 6c 24 18 01       	subl   $0x1,0x18(%esp)
  4041c9:	eb 04                	jmp    4041cf <AnalizeCommand+0x157>
  4041cb:	90                   	nop
  4041cc:	eb 01                	jmp    4041cf <AnalizeCommand+0x157>
  4041ce:	90                   	nop
  4041cf:	83 44 24 1c 01       	addl   $0x1,0x1c(%esp)
  4041d4:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  4041d8:	3b 44 24 34          	cmp    0x34(%esp),%eax
  4041dc:	0f 8e 3d ff ff ff    	jle    40411f <AnalizeCommand+0xa7>
  4041e2:	8b 44 24 14          	mov    0x14(%esp),%eax
  4041e6:	3b 44 24 34          	cmp    0x34(%esp),%eax
  4041ea:	7f 1a                	jg     404206 <AnalizeCommand+0x18e>
  4041ec:	ff 74 24 38          	push   0x38(%esp)
  4041f0:	ff 74 24 18          	push   0x18(%esp)
  4041f4:	ff 74 24 3c          	push   0x3c(%esp)
  4041f8:	ff 74 24 3c          	push   0x3c(%esp)
  4041fc:	e8 78 fd ff ff       	call   403f79 <CreatePipeNode>
  404201:	83 c4 10             	add    $0x10,%esp
  404204:	eb 49                	jmp    40424f <AnalizeCommand+0x1d7>
  404206:	8b 44 24 30          	mov    0x30(%esp),%eax
  40420a:	8b 04 85 20 a2 40 00 	mov    0x40a220(,%eax,4),%eax
  404211:	0f b6 00             	movzbl (%eax),%eax
  404214:	3c 28                	cmp    $0x28,%al
  404216:	75 20                	jne    404238 <AnalizeCommand+0x1c0>
  404218:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
  40421d:	75 19                	jne    404238 <AnalizeCommand+0x1c0>
  40421f:	83 ec 04             	sub    $0x4,%esp
  404222:	ff 74 24 3c          	push   0x3c(%esp)
  404226:	ff 74 24 3c          	push   0x3c(%esp)
  40422a:	ff 74 24 3c          	push   0x3c(%esp)
  40422e:	e8 47 fb ff ff       	call   403d7a <CreateCurveNode>
  404233:	83 c4 10             	add    $0x10,%esp
  404236:	eb 17                	jmp    40424f <AnalizeCommand+0x1d7>
  404238:	83 ec 04             	sub    $0x4,%esp
  40423b:	ff 74 24 3c          	push   0x3c(%esp)
  40423f:	ff 74 24 3c          	push   0x3c(%esp)
  404243:	ff 74 24 3c          	push   0x3c(%esp)
  404247:	e8 ca f8 ff ff       	call   403b16 <CreateSimpleNode>
  40424c:	83 c4 10             	add    $0x10,%esp
  40424f:	83 c4 2c             	add    $0x2c,%esp
  404252:	c3                   	ret

00404253 <ExecuteTLST>:
  404253:	83 ec 0c             	sub    $0xc,%esp
  404256:	8b 44 24 10          	mov    0x10(%esp),%eax
  40425a:	8b 40 08             	mov    0x8(%eax),%eax
  40425d:	85 c0                	test   %eax,%eax
  40425f:	78 23                	js     404284 <ExecuteTLST+0x31>
  404261:	8b 44 24 10          	mov    0x10(%esp),%eax
  404265:	8b 40 08             	mov    0x8(%eax),%eax
  404268:	6b c0 44             	imul   $0x44,%eax,%eax
  40426b:	05 80 90 40 00       	add    $0x409080,%eax
  404270:	83 ec 04             	sub    $0x4,%esp
  404273:	ff 74 24 1c          	push   0x1c(%esp)
  404277:	ff 74 24 18          	push   0x18(%esp)
  40427b:	50                   	push   %eax
  40427c:	e8 8b 03 00 00       	call   40460c <ExecuteCommand>
  404281:	83 c4 10             	add    $0x10,%esp
  404284:	8b 44 24 10          	mov    0x10(%esp),%eax
  404288:	8b 40 0c             	mov    0xc(%eax),%eax
  40428b:	85 c0                	test   %eax,%eax
  40428d:	78 23                	js     4042b2 <ExecuteTLST+0x5f>
  40428f:	8b 44 24 10          	mov    0x10(%esp),%eax
  404293:	8b 40 0c             	mov    0xc(%eax),%eax
  404296:	6b c0 44             	imul   $0x44,%eax,%eax
  404299:	05 80 90 40 00       	add    $0x409080,%eax
  40429e:	83 ec 04             	sub    $0x4,%esp
  4042a1:	ff 74 24 1c          	push   0x1c(%esp)
  4042a5:	ff 74 24 18          	push   0x18(%esp)
  4042a9:	50                   	push   %eax
  4042aa:	e8 5d 03 00 00       	call   40460c <ExecuteCommand>
  4042af:	83 c4 10             	add    $0x10,%esp
  4042b2:	90                   	nop
  4042b3:	83 c4 0c             	add    $0xc,%esp
  4042b6:	c3                   	ret

004042b7 <ExecuteTFIL>:
  4042b7:	83 ec 2c             	sub    $0x2c,%esp
  4042ba:	83 ec 0c             	sub    $0xc,%esp
  4042bd:	8d 44 24 18          	lea    0x18(%esp),%eax
  4042c1:	50                   	push   %eax
  4042c2:	e8 a7 d0 ff ff       	call   40136e <pipe>
  4042c7:	83 c4 10             	add    $0x10,%esp
  4042ca:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  4042ce:	8b 44 24 30          	mov    0x30(%esp),%eax
  4042d2:	8b 40 08             	mov    0x8(%eax),%eax
  4042d5:	85 c0                	test   %eax,%eax
  4042d7:	0f 8e 98 00 00 00    	jle    404375 <ExecuteTFIL+0xbe>
  4042dd:	8b 44 24 30          	mov    0x30(%esp),%eax
  4042e1:	8b 40 08             	mov    0x8(%eax),%eax
  4042e4:	6b c0 44             	imul   $0x44,%eax,%eax
  4042e7:	05 80 90 40 00       	add    $0x409080,%eax
  4042ec:	89 44 24 18          	mov    %eax,0x18(%esp)
  4042f0:	8b 44 24 18          	mov    0x18(%esp),%eax
  4042f4:	8b 40 04             	mov    0x4(%eax),%eax
  4042f7:	83 c8 04             	or     $0x4,%eax
  4042fa:	89 c2                	mov    %eax,%edx
  4042fc:	8b 44 24 18          	mov    0x18(%esp),%eax
  404300:	89 50 04             	mov    %edx,0x4(%eax)
  404303:	8b 44 24 30          	mov    0x30(%esp),%eax
  404307:	8b 40 04             	mov    0x4(%eax),%eax
  40430a:	83 e0 02             	and    $0x2,%eax
  40430d:	85 c0                	test   %eax,%eax
  40430f:	74 4c                	je     40435d <ExecuteTFIL+0xa6>
  404311:	8b 44 24 18          	mov    0x18(%esp),%eax
  404315:	8b 40 04             	mov    0x4(%eax),%eax
  404318:	83 c8 02             	or     $0x2,%eax
  40431b:	89 c2                	mov    %eax,%edx
  40431d:	8b 44 24 18          	mov    0x18(%esp),%eax
  404321:	89 50 04             	mov    %edx,0x4(%eax)
  404324:	8b 44 24 18          	mov    0x18(%esp),%eax
  404328:	8b 40 04             	mov    0x4(%eax),%eax
  40432b:	83 c8 08             	or     $0x8,%eax
  40432e:	89 c2                	mov    %eax,%edx
  404330:	8b 44 24 18          	mov    0x18(%esp),%eax
  404334:	89 50 04             	mov    %edx,0x4(%eax)
  404337:	8b 44 24 38          	mov    0x38(%esp),%eax
  40433b:	8d 50 04             	lea    0x4(%eax),%edx
  40433e:	8b 44 24 10          	mov    0x10(%esp),%eax
  404342:	89 02                	mov    %eax,(%edx)
  404344:	83 ec 04             	sub    $0x4,%esp
  404347:	ff 74 24 3c          	push   0x3c(%esp)
  40434b:	ff 74 24 38          	push   0x38(%esp)
  40434f:	ff 74 24 24          	push   0x24(%esp)
  404353:	e8 b4 02 00 00       	call   40460c <ExecuteCommand>
  404358:	83 c4 10             	add    $0x10,%esp
  40435b:	eb 18                	jmp    404375 <ExecuteTFIL+0xbe>
  40435d:	83 ec 04             	sub    $0x4,%esp
  404360:	8d 44 24 10          	lea    0x10(%esp),%eax
  404364:	50                   	push   %eax
  404365:	ff 74 24 38          	push   0x38(%esp)
  404369:	ff 74 24 24          	push   0x24(%esp)
  40436d:	e8 9a 02 00 00       	call   40460c <ExecuteCommand>
  404372:	83 c4 10             	add    $0x10,%esp
  404375:	8b 44 24 30          	mov    0x30(%esp),%eax
  404379:	8b 40 0c             	mov    0xc(%eax),%eax
  40437c:	85 c0                	test   %eax,%eax
  40437e:	7e 51                	jle    4043d1 <ExecuteTFIL+0x11a>
  404380:	8b 44 24 30          	mov    0x30(%esp),%eax
  404384:	8b 40 0c             	mov    0xc(%eax),%eax
  404387:	6b c0 44             	imul   $0x44,%eax,%eax
  40438a:	05 80 90 40 00       	add    $0x409080,%eax
  40438f:	89 44 24 14          	mov    %eax,0x14(%esp)
  404393:	8b 44 24 14          	mov    0x14(%esp),%eax
  404397:	8b 40 04             	mov    0x4(%eax),%eax
  40439a:	83 c8 02             	or     $0x2,%eax
  40439d:	89 c2                	mov    %eax,%edx
  40439f:	8b 44 24 14          	mov    0x14(%esp),%eax
  4043a3:	89 50 04             	mov    %edx,0x4(%eax)
  4043a6:	8b 44 24 14          	mov    0x14(%esp),%eax
  4043aa:	8b 40 04             	mov    0x4(%eax),%eax
  4043ad:	83 c8 08             	or     $0x8,%eax
  4043b0:	89 c2                	mov    %eax,%edx
  4043b2:	8b 44 24 14          	mov    0x14(%esp),%eax
  4043b6:	89 50 04             	mov    %edx,0x4(%eax)
  4043b9:	83 ec 04             	sub    $0x4,%esp
  4043bc:	8d 44 24 10          	lea    0x10(%esp),%eax
  4043c0:	50                   	push   %eax
  4043c1:	ff 74 24 38          	push   0x38(%esp)
  4043c5:	ff 74 24 20          	push   0x20(%esp)
  4043c9:	e8 3e 02 00 00       	call   40460c <ExecuteCommand>
  4043ce:	83 c4 10             	add    $0x10,%esp
  4043d1:	90                   	nop
  4043d2:	83 c4 2c             	add    $0x2c,%esp
  4043d5:	c3                   	ret

004043d6 <ExecuteTPAR>:
  4043d6:	83 ec 1c             	sub    $0x1c,%esp
  4043d9:	8b 44 24 20          	mov    0x20(%esp),%eax
  4043dd:	8b 40 08             	mov    0x8(%eax),%eax
  4043e0:	85 c0                	test   %eax,%eax
  4043e2:	7e 65                	jle    404449 <ExecuteTPAR+0x73>
  4043e4:	8b 44 24 20          	mov    0x20(%esp),%eax
  4043e8:	8b 40 08             	mov    0x8(%eax),%eax
  4043eb:	6b c0 44             	imul   $0x44,%eax,%eax
  4043ee:	05 80 90 40 00       	add    $0x409080,%eax
  4043f3:	89 44 24 0c          	mov    %eax,0xc(%esp)
  4043f7:	e8 0f ee ff ff       	call   40320b <fork>
  4043fc:	85 c0                	test   %eax,%eax
  4043fe:	74 12                	je     404412 <ExecuteTPAR+0x3c>
  404400:	83 ec 0c             	sub    $0xc,%esp
  404403:	8d 44 24 14          	lea    0x14(%esp),%eax
  404407:	50                   	push   %eax
  404408:	e8 20 ee ff ff       	call   40322d <wait>
  40440d:	83 c4 10             	add    $0x10,%esp
  404410:	eb 37                	jmp    404449 <ExecuteTPAR+0x73>
  404412:	83 ec 08             	sub    $0x8,%esp
  404415:	ff 74 24 30          	push   0x30(%esp)
  404419:	ff 74 24 2c          	push   0x2c(%esp)
  40441d:	e8 7b 02 00 00       	call   40469d <OutputRedirect>
  404422:	83 c4 10             	add    $0x10,%esp
  404425:	83 ec 04             	sub    $0x4,%esp
  404428:	ff 74 24 2c          	push   0x2c(%esp)
  40442c:	ff 74 24 28          	push   0x28(%esp)
  404430:	ff 74 24 18          	push   0x18(%esp)
  404434:	e8 d3 01 00 00       	call   40460c <ExecuteCommand>
  404439:	83 c4 10             	add    $0x10,%esp
  40443c:	83 ec 0c             	sub    $0xc,%esp
  40443f:	6a 00                	push   $0x0
  404441:	e8 12 ee ff ff       	call   403258 <exit>
  404446:	83 c4 10             	add    $0x10,%esp
  404449:	90                   	nop
  40444a:	83 c4 1c             	add    $0x1c,%esp
  40444d:	c3                   	ret

0040444e <ExecuteTCOM>:
  40444e:	83 ec 7c             	sub    $0x7c,%esp
  404451:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
  404458:	8b 40 10             	mov    0x10(%eax),%eax
  40445b:	83 ec 08             	sub    $0x8,%esp
  40445e:	68 7a 72 40 00       	push   $0x40727a
  404463:	50                   	push   %eax
  404464:	e8 f0 eb ff ff       	call   403059 <strcmp>
  404469:	83 c4 10             	add    $0x10,%esp
  40446c:	85 c0                	test   %eax,%eax
  40446e:	0f 85 83 00 00 00    	jne    4044f7 <ExecuteTCOM+0xa9>
  404474:	a1 e8 a2 40 00       	mov    0x40a2e8,%eax
  404479:	83 f8 01             	cmp    $0x1,%eax
  40447c:	75 1a                	jne    404498 <ExecuteTCOM+0x4a>
  40447e:	83 ec 08             	sub    $0x8,%esp
  404481:	68 e0 9d 40 00       	push   $0x409de0
  404486:	68 7d 72 40 00       	push   $0x40727d
  40448b:	e8 ea e0 ff ff       	call   40257a <printf>
  404490:	83 c4 10             	add    $0x10,%esp
  404493:	e9 70 01 00 00       	jmp    404608 <ExecuteTCOM+0x1ba>
  404498:	a1 e8 a2 40 00       	mov    0x40a2e8,%eax
  40449d:	83 f8 02             	cmp    $0x2,%eax
  4044a0:	75 40                	jne    4044e2 <ExecuteTCOM+0x94>
  4044a2:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
  4044a9:	8b 40 20             	mov    0x20(%eax),%eax
  4044ac:	83 ec 0c             	sub    $0xc,%esp
  4044af:	50                   	push   %eax
  4044b0:	e8 60 d0 ff ff       	call   401515 <chdir>
  4044b5:	83 c4 10             	add    $0x10,%esp
  4044b8:	83 f8 ff             	cmp    $0xffffffff,%eax
  4044bb:	75 10                	jne    4044cd <ExecuteTCOM+0x7f>
  4044bd:	83 ec 0c             	sub    $0xc,%esp
  4044c0:	68 81 72 40 00       	push   $0x407281
  4044c5:	e8 b0 e0 ff ff       	call   40257a <printf>
  4044ca:	83 c4 10             	add    $0x10,%esp
  4044cd:	83 ec 0c             	sub    $0xc,%esp
  4044d0:	68 e0 9d 40 00       	push   $0x409de0
  4044d5:	e8 9d ee ff ff       	call   403377 <getPath>
  4044da:	83 c4 10             	add    $0x10,%esp
  4044dd:	e9 26 01 00 00       	jmp    404608 <ExecuteTCOM+0x1ba>
  4044e2:	83 ec 0c             	sub    $0xc,%esp
  4044e5:	68 90 72 40 00       	push   $0x407290
  4044ea:	e8 8b e0 ff ff       	call   40257a <printf>
  4044ef:	83 c4 10             	add    $0x10,%esp
  4044f2:	e9 11 01 00 00       	jmp    404608 <ExecuteTCOM+0x1ba>
  4044f7:	e8 0f ed ff ff       	call   40320b <fork>
  4044fc:	89 44 24 6c          	mov    %eax,0x6c(%esp)
  404500:	c7 44 24 68 ff ff ff 	movl   $0xffffffff,0x68(%esp)
  404507:	ff 
  404508:	83 7c 24 6c 00       	cmpl   $0x0,0x6c(%esp)
  40450d:	74 31                	je     404540 <ExecuteTCOM+0xf2>
  40450f:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
  404516:	8b 40 04             	mov    0x4(%eax),%eax
  404519:	83 e0 08             	and    $0x8,%eax
  40451c:	85 c0                	test   %eax,%eax
  40451e:	0f 85 e4 00 00 00    	jne    404608 <ExecuteTCOM+0x1ba>
  404524:	90                   	nop
  404525:	83 ec 0c             	sub    $0xc,%esp
  404528:	8d 44 24 70          	lea    0x70(%esp),%eax
  40452c:	50                   	push   %eax
  40452d:	e8 fb ec ff ff       	call   40322d <wait>
  404532:	83 c4 10             	add    $0x10,%esp
  404535:	39 44 24 6c          	cmp    %eax,0x6c(%esp)
  404539:	75 ea                	jne    404525 <ExecuteTCOM+0xd7>
  40453b:	e9 c8 00 00 00       	jmp    404608 <ExecuteTCOM+0x1ba>
  404540:	83 ec 08             	sub    $0x8,%esp
  404543:	ff b4 24 90 00 00 00 	push   0x90(%esp)
  40454a:	ff b4 24 8c 00 00 00 	push   0x8c(%esp)
  404551:	e8 47 01 00 00       	call   40469d <OutputRedirect>
  404556:	83 c4 10             	add    $0x10,%esp
  404559:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
  404560:	8d 50 1c             	lea    0x1c(%eax),%edx
  404563:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
  40456a:	8b 40 1c             	mov    0x1c(%eax),%eax
  40456d:	83 ec 08             	sub    $0x8,%esp
  404570:	52                   	push   %edx
  404571:	50                   	push   %eax
  404572:	e8 43 ec ff ff       	call   4031ba <execv>
  404577:	83 c4 10             	add    $0x10,%esp
  40457a:	83 f8 ff             	cmp    $0xffffffff,%eax
  40457d:	74 0d                	je     40458c <ExecuteTCOM+0x13e>
  40457f:	83 ec 0c             	sub    $0xc,%esp
  404582:	6a 00                	push   $0x0
  404584:	e8 cf ec ff ff       	call   403258 <exit>
  404589:	83 c4 10             	add    $0x10,%esp
  40458c:	c6 04 24 00          	movb   $0x0,(%esp)
  404590:	83 ec 08             	sub    $0x8,%esp
  404593:	68 b4 72 40 00       	push   $0x4072b4
  404598:	8d 44 24 0c          	lea    0xc(%esp),%eax
  40459c:	50                   	push   %eax
  40459d:	e8 46 eb ff ff       	call   4030e8 <strcat>
  4045a2:	83 c4 10             	add    $0x10,%esp
  4045a5:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
  4045ac:	8b 40 1c             	mov    0x1c(%eax),%eax
  4045af:	83 ec 08             	sub    $0x8,%esp
  4045b2:	50                   	push   %eax
  4045b3:	8d 44 24 0c          	lea    0xc(%esp),%eax
  4045b7:	50                   	push   %eax
  4045b8:	e8 2b eb ff ff       	call   4030e8 <strcat>
  4045bd:	83 c4 10             	add    $0x10,%esp
  4045c0:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
  4045c7:	83 c0 1c             	add    $0x1c,%eax
  4045ca:	83 ec 08             	sub    $0x8,%esp
  4045cd:	50                   	push   %eax
  4045ce:	8d 44 24 0c          	lea    0xc(%esp),%eax
  4045d2:	50                   	push   %eax
  4045d3:	e8 e2 eb ff ff       	call   4031ba <execv>
  4045d8:	83 c4 10             	add    $0x10,%esp
  4045db:	83 f8 ff             	cmp    $0xffffffff,%eax
  4045de:	75 1b                	jne    4045fb <ExecuteTCOM+0x1ad>
  4045e0:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
  4045e7:	8b 40 1c             	mov    0x1c(%eax),%eax
  4045ea:	83 ec 08             	sub    $0x8,%esp
  4045ed:	50                   	push   %eax
  4045ee:	68 bc 72 40 00       	push   $0x4072bc
  4045f3:	e8 82 df ff ff       	call   40257a <printf>
  4045f8:	83 c4 10             	add    $0x10,%esp
  4045fb:	83 ec 0c             	sub    $0xc,%esp
  4045fe:	6a 00                	push   $0x0
  404600:	e8 53 ec ff ff       	call   403258 <exit>
  404605:	83 c4 10             	add    $0x10,%esp
  404608:	83 c4 7c             	add    $0x7c,%esp
  40460b:	c3                   	ret

0040460c <ExecuteCommand>:
  40460c:	83 ec 0c             	sub    $0xc,%esp
  40460f:	8b 44 24 10          	mov    0x10(%esp),%eax
  404613:	8b 00                	mov    (%eax),%eax
  404615:	83 f8 08             	cmp    $0x8,%eax
  404618:	74 66                	je     404680 <ExecuteCommand+0x74>
  40461a:	83 f8 08             	cmp    $0x8,%eax
  40461d:	77 79                	ja     404698 <ExecuteCommand+0x8c>
  40461f:	83 f8 04             	cmp    $0x4,%eax
  404622:	74 43                	je     404667 <ExecuteCommand+0x5b>
  404624:	83 f8 04             	cmp    $0x4,%eax
  404627:	77 6f                	ja     404698 <ExecuteCommand+0x8c>
  404629:	83 f8 01             	cmp    $0x1,%eax
  40462c:	74 07                	je     404635 <ExecuteCommand+0x29>
  40462e:	83 f8 02             	cmp    $0x2,%eax
  404631:	74 1b                	je     40464e <ExecuteCommand+0x42>
  404633:	eb 63                	jmp    404698 <ExecuteCommand+0x8c>
  404635:	83 ec 04             	sub    $0x4,%esp
  404638:	ff 74 24 1c          	push   0x1c(%esp)
  40463c:	ff 74 24 1c          	push   0x1c(%esp)
  404640:	ff 74 24 1c          	push   0x1c(%esp)
  404644:	e8 0a fc ff ff       	call   404253 <ExecuteTLST>
  404649:	83 c4 10             	add    $0x10,%esp
  40464c:	eb 4a                	jmp    404698 <ExecuteCommand+0x8c>
  40464e:	83 ec 04             	sub    $0x4,%esp
  404651:	ff 74 24 1c          	push   0x1c(%esp)
  404655:	ff 74 24 1c          	push   0x1c(%esp)
  404659:	ff 74 24 1c          	push   0x1c(%esp)
  40465d:	e8 55 fc ff ff       	call   4042b7 <ExecuteTFIL>
  404662:	83 c4 10             	add    $0x10,%esp
  404665:	eb 31                	jmp    404698 <ExecuteCommand+0x8c>
  404667:	83 ec 04             	sub    $0x4,%esp
  40466a:	ff 74 24 1c          	push   0x1c(%esp)
  40466e:	ff 74 24 1c          	push   0x1c(%esp)
  404672:	ff 74 24 1c          	push   0x1c(%esp)
  404676:	e8 5b fd ff ff       	call   4043d6 <ExecuteTPAR>
  40467b:	83 c4 10             	add    $0x10,%esp
  40467e:	eb 18                	jmp    404698 <ExecuteCommand+0x8c>
  404680:	83 ec 04             	sub    $0x4,%esp
  404683:	ff 74 24 1c          	push   0x1c(%esp)
  404687:	ff 74 24 1c          	push   0x1c(%esp)
  40468b:	ff 74 24 1c          	push   0x1c(%esp)
  40468f:	e8 ba fd ff ff       	call   40444e <ExecuteTCOM>
  404694:	83 c4 10             	add    $0x10,%esp
  404697:	90                   	nop
  404698:	90                   	nop
  404699:	83 c4 0c             	add    $0xc,%esp
  40469c:	c3                   	ret

0040469d <OutputRedirect>:
  40469d:	83 ec 1c             	sub    $0x1c,%esp
  4046a0:	8b 44 24 20          	mov    0x20(%esp),%eax
  4046a4:	8b 40 14             	mov    0x14(%eax),%eax
  4046a7:	85 c0                	test   %eax,%eax
  4046a9:	74 65                	je     404710 <OutputRedirect+0x73>
  4046ab:	8b 44 24 20          	mov    0x20(%esp),%eax
  4046af:	8b 40 14             	mov    0x14(%eax),%eax
  4046b2:	83 ec 08             	sub    $0x8,%esp
  4046b5:	6a 00                	push   $0x0
  4046b7:	50                   	push   %eax
  4046b8:	e8 fa cb ff ff       	call   4012b7 <open>
  4046bd:	83 c4 10             	add    $0x10,%esp
  4046c0:	89 44 24 0c          	mov    %eax,0xc(%esp)
  4046c4:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%esp)
  4046c9:	7e 2d                	jle    4046f8 <OutputRedirect+0x5b>
  4046cb:	83 ec 0c             	sub    $0xc,%esp
  4046ce:	6a 00                	push   $0x0
  4046d0:	e8 10 cc ff ff       	call   4012e5 <close>
  4046d5:	83 c4 10             	add    $0x10,%esp
  4046d8:	83 ec 0c             	sub    $0xc,%esp
  4046db:	ff 74 24 18          	push   0x18(%esp)
  4046df:	e8 e4 cc ff ff       	call   4013c8 <dup>
  4046e4:	83 c4 10             	add    $0x10,%esp
  4046e7:	83 ec 0c             	sub    $0xc,%esp
  4046ea:	ff 74 24 18          	push   0x18(%esp)
  4046ee:	e8 f2 cb ff ff       	call   4012e5 <close>
  4046f3:	83 c4 10             	add    $0x10,%esp
  4046f6:	eb 18                	jmp    404710 <OutputRedirect+0x73>
  4046f8:	8b 44 24 20          	mov    0x20(%esp),%eax
  4046fc:	8b 40 14             	mov    0x14(%eax),%eax
  4046ff:	83 ec 08             	sub    $0x8,%esp
  404702:	50                   	push   %eax
  404703:	68 f5 72 40 00       	push   $0x4072f5
  404708:	e8 6d de ff ff       	call   40257a <printf>
  40470d:	83 c4 10             	add    $0x10,%esp
  404710:	8b 44 24 20          	mov    0x20(%esp),%eax
  404714:	8b 40 18             	mov    0x18(%eax),%eax
  404717:	85 c0                	test   %eax,%eax
  404719:	74 68                	je     404783 <OutputRedirect+0xe6>
  40471b:	8b 44 24 20          	mov    0x20(%esp),%eax
  40471f:	8b 40 18             	mov    0x18(%eax),%eax
  404722:	83 ec 08             	sub    $0x8,%esp
  404725:	68 ff 01 00 00       	push   $0x1ff
  40472a:	50                   	push   %eax
  40472b:	e8 59 cb ff ff       	call   401289 <creat>
  404730:	83 c4 10             	add    $0x10,%esp
  404733:	89 44 24 08          	mov    %eax,0x8(%esp)
  404737:	83 7c 24 08 00       	cmpl   $0x0,0x8(%esp)
  40473c:	7e 2d                	jle    40476b <OutputRedirect+0xce>
  40473e:	83 ec 0c             	sub    $0xc,%esp
  404741:	6a 01                	push   $0x1
  404743:	e8 9d cb ff ff       	call   4012e5 <close>
  404748:	83 c4 10             	add    $0x10,%esp
  40474b:	83 ec 0c             	sub    $0xc,%esp
  40474e:	ff 74 24 14          	push   0x14(%esp)
  404752:	e8 71 cc ff ff       	call   4013c8 <dup>
  404757:	83 c4 10             	add    $0x10,%esp
  40475a:	83 ec 0c             	sub    $0xc,%esp
  40475d:	ff 74 24 14          	push   0x14(%esp)
  404761:	e8 7f cb ff ff       	call   4012e5 <close>
  404766:	83 c4 10             	add    $0x10,%esp
  404769:	eb 18                	jmp    404783 <OutputRedirect+0xe6>
  40476b:	8b 44 24 20          	mov    0x20(%esp),%eax
  40476f:	8b 40 18             	mov    0x18(%eax),%eax
  404772:	83 ec 08             	sub    $0x8,%esp
  404775:	50                   	push   %eax
  404776:	68 08 73 40 00       	push   $0x407308
  40477b:	e8 fa dd ff ff       	call   40257a <printf>
  404780:	83 c4 10             	add    $0x10,%esp
  404783:	8b 44 24 20          	mov    0x20(%esp),%eax
  404787:	8b 40 04             	mov    0x4(%eax),%eax
  40478a:	83 e0 02             	and    $0x2,%eax
  40478d:	85 c0                	test   %eax,%eax
  40478f:	74 3b                	je     4047cc <OutputRedirect+0x12f>
  404791:	83 ec 0c             	sub    $0xc,%esp
  404794:	6a 00                	push   $0x0
  404796:	e8 4a cb ff ff       	call   4012e5 <close>
  40479b:	83 c4 10             	add    $0x10,%esp
  40479e:	8b 44 24 24          	mov    0x24(%esp),%eax
  4047a2:	8b 00                	mov    (%eax),%eax
  4047a4:	83 ec 0c             	sub    $0xc,%esp
  4047a7:	50                   	push   %eax
  4047a8:	e8 1b cc ff ff       	call   4013c8 <dup>
  4047ad:	83 c4 10             	add    $0x10,%esp
  4047b0:	8b 44 24 24          	mov    0x24(%esp),%eax
  4047b4:	8b 00                	mov    (%eax),%eax
  4047b6:	83 ec 0c             	sub    $0xc,%esp
  4047b9:	50                   	push   %eax
  4047ba:	e8 26 cb ff ff       	call   4012e5 <close>
  4047bf:	83 c4 10             	add    $0x10,%esp
  4047c2:	8b 44 24 24          	mov    0x24(%esp),%eax
  4047c6:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  4047cc:	8b 44 24 20          	mov    0x20(%esp),%eax
  4047d0:	8b 40 04             	mov    0x4(%eax),%eax
  4047d3:	83 e0 04             	and    $0x4,%eax
  4047d6:	85 c0                	test   %eax,%eax
  4047d8:	74 44                	je     40481e <OutputRedirect+0x181>
  4047da:	83 ec 0c             	sub    $0xc,%esp
  4047dd:	6a 01                	push   $0x1
  4047df:	e8 01 cb ff ff       	call   4012e5 <close>
  4047e4:	83 c4 10             	add    $0x10,%esp
  4047e7:	8b 44 24 24          	mov    0x24(%esp),%eax
  4047eb:	83 c0 04             	add    $0x4,%eax
  4047ee:	8b 00                	mov    (%eax),%eax
  4047f0:	83 ec 0c             	sub    $0xc,%esp
  4047f3:	50                   	push   %eax
  4047f4:	e8 cf cb ff ff       	call   4013c8 <dup>
  4047f9:	83 c4 10             	add    $0x10,%esp
  4047fc:	8b 44 24 24          	mov    0x24(%esp),%eax
  404800:	83 c0 04             	add    $0x4,%eax
  404803:	8b 00                	mov    (%eax),%eax
  404805:	83 ec 0c             	sub    $0xc,%esp
  404808:	50                   	push   %eax
  404809:	e8 d7 ca ff ff       	call   4012e5 <close>
  40480e:	83 c4 10             	add    $0x10,%esp
  404811:	8b 44 24 24          	mov    0x24(%esp),%eax
  404815:	83 c0 04             	add    $0x4,%eax
  404818:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  40481e:	83 7c 24 24 00       	cmpl   $0x0,0x24(%esp)
  404823:	74 3e                	je     404863 <OutputRedirect+0x1c6>
  404825:	8b 44 24 24          	mov    0x24(%esp),%eax
  404829:	8b 00                	mov    (%eax),%eax
  40482b:	85 c0                	test   %eax,%eax
  40482d:	78 12                	js     404841 <OutputRedirect+0x1a4>
  40482f:	8b 44 24 24          	mov    0x24(%esp),%eax
  404833:	8b 00                	mov    (%eax),%eax
  404835:	83 ec 0c             	sub    $0xc,%esp
  404838:	50                   	push   %eax
  404839:	e8 a7 ca ff ff       	call   4012e5 <close>
  40483e:	83 c4 10             	add    $0x10,%esp
  404841:	8b 44 24 24          	mov    0x24(%esp),%eax
  404845:	83 c0 04             	add    $0x4,%eax
  404848:	8b 00                	mov    (%eax),%eax
  40484a:	85 c0                	test   %eax,%eax
  40484c:	78 15                	js     404863 <OutputRedirect+0x1c6>
  40484e:	8b 44 24 24          	mov    0x24(%esp),%eax
  404852:	83 c0 04             	add    $0x4,%eax
  404855:	8b 00                	mov    (%eax),%eax
  404857:	83 ec 0c             	sub    $0xc,%esp
  40485a:	50                   	push   %eax
  40485b:	e8 85 ca ff ff       	call   4012e5 <close>
  404860:	83 c4 10             	add    $0x10,%esp
  404863:	90                   	nop
  404864:	83 c4 1c             	add    $0x1c,%esp
  404867:	c3                   	ret

00404868 <SpiltCommand>:
  404868:	83 ec 1c             	sub    $0x1c,%esp
  40486b:	c7 44 24 0c 20 9e 40 	movl   $0x409e20,0xc(%esp)
  404872:	00 
  404873:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  40487a:	00 
  40487b:	8b 44 24 20          	mov    0x20(%esp),%eax
  40487f:	89 44 24 04          	mov    %eax,0x4(%esp)
  404883:	8b 44 24 20          	mov    0x20(%esp),%eax
  404887:	89 04 24             	mov    %eax,(%esp)
  40488a:	e9 8a 01 00 00       	jmp    404a19 <SpiltCommand+0x1b1>
  40488f:	83 ec 0c             	sub    $0xc,%esp
  404892:	ff 74 24 10          	push   0x10(%esp)
  404896:	e8 2c 02 00 00       	call   404ac7 <TrimLeft>
  40489b:	83 c4 10             	add    $0x10,%esp
  40489e:	89 44 24 04          	mov    %eax,0x4(%esp)
  4048a2:	83 ec 0c             	sub    $0xc,%esp
  4048a5:	ff 74 24 10          	push   0x10(%esp)
  4048a9:	e8 81 01 00 00       	call   404a2f <NextKeyToken>
  4048ae:	83 c4 10             	add    $0x10,%esp
  4048b1:	89 04 24             	mov    %eax,(%esp)
  4048b4:	8b 04 24             	mov    (%esp),%eax
  4048b7:	39 44 24 04          	cmp    %eax,0x4(%esp)
  4048bb:	0f 83 d1 00 00 00    	jae    404992 <SpiltCommand+0x12a>
  4048c1:	8b 44 24 08          	mov    0x8(%esp),%eax
  4048c5:	8d 50 01             	lea    0x1(%eax),%edx
  4048c8:	89 54 24 08          	mov    %edx,0x8(%esp)
  4048cc:	8b 54 24 0c          	mov    0xc(%esp),%edx
  4048d0:	89 14 85 20 a2 40 00 	mov    %edx,0x40a220(,%eax,4)
  4048d7:	e9 9b 00 00 00       	jmp    404977 <SpiltCommand+0x10f>
  4048dc:	8b 44 24 04          	mov    0x4(%esp),%eax
  4048e0:	0f b6 00             	movzbl (%eax),%eax
  4048e3:	3c 5c                	cmp    $0x5c,%al
  4048e5:	75 75                	jne    40495c <SpiltCommand+0xf4>
  4048e7:	8b 44 24 04          	mov    0x4(%esp),%eax
  4048eb:	83 c0 01             	add    $0x1,%eax
  4048ee:	0f b6 00             	movzbl (%eax),%eax
  4048f1:	3c 3b                	cmp    $0x3b,%al
  4048f3:	74 62                	je     404957 <SpiltCommand+0xef>
  4048f5:	8b 44 24 04          	mov    0x4(%esp),%eax
  4048f9:	83 c0 01             	add    $0x1,%eax
  4048fc:	0f b6 00             	movzbl (%eax),%eax
  4048ff:	3c 7c                	cmp    $0x7c,%al
  404901:	74 54                	je     404957 <SpiltCommand+0xef>
  404903:	8b 44 24 04          	mov    0x4(%esp),%eax
  404907:	83 c0 01             	add    $0x1,%eax
  40490a:	0f b6 00             	movzbl (%eax),%eax
  40490d:	3c 26                	cmp    $0x26,%al
  40490f:	74 46                	je     404957 <SpiltCommand+0xef>
  404911:	8b 44 24 04          	mov    0x4(%esp),%eax
  404915:	83 c0 01             	add    $0x1,%eax
  404918:	0f b6 00             	movzbl (%eax),%eax
  40491b:	3c 3e                	cmp    $0x3e,%al
  40491d:	74 38                	je     404957 <SpiltCommand+0xef>
  40491f:	8b 44 24 04          	mov    0x4(%esp),%eax
  404923:	83 c0 01             	add    $0x1,%eax
  404926:	0f b6 00             	movzbl (%eax),%eax
  404929:	3c 3c                	cmp    $0x3c,%al
  40492b:	74 2a                	je     404957 <SpiltCommand+0xef>
  40492d:	8b 44 24 04          	mov    0x4(%esp),%eax
  404931:	83 c0 01             	add    $0x1,%eax
  404934:	0f b6 00             	movzbl (%eax),%eax
  404937:	3c 28                	cmp    $0x28,%al
  404939:	74 1c                	je     404957 <SpiltCommand+0xef>
  40493b:	8b 44 24 04          	mov    0x4(%esp),%eax
  40493f:	83 c0 01             	add    $0x1,%eax
  404942:	0f b6 00             	movzbl (%eax),%eax
  404945:	3c 29                	cmp    $0x29,%al
  404947:	74 0e                	je     404957 <SpiltCommand+0xef>
  404949:	8b 44 24 04          	mov    0x4(%esp),%eax
  40494d:	83 c0 01             	add    $0x1,%eax
  404950:	0f b6 00             	movzbl (%eax),%eax
  404953:	3c 5c                	cmp    $0x5c,%al
  404955:	75 05                	jne    40495c <SpiltCommand+0xf4>
  404957:	83 44 24 04 01       	addl   $0x1,0x4(%esp)
  40495c:	8b 54 24 04          	mov    0x4(%esp),%edx
  404960:	8d 42 01             	lea    0x1(%edx),%eax
  404963:	89 44 24 04          	mov    %eax,0x4(%esp)
  404967:	8b 44 24 0c          	mov    0xc(%esp),%eax
  40496b:	8d 48 01             	lea    0x1(%eax),%ecx
  40496e:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
  404972:	0f b6 12             	movzbl (%edx),%edx
  404975:	88 10                	mov    %dl,(%eax)
  404977:	8b 44 24 04          	mov    0x4(%esp),%eax
  40497b:	3b 04 24             	cmp    (%esp),%eax
  40497e:	0f 82 58 ff ff ff    	jb     4048dc <SpiltCommand+0x74>
  404984:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404988:	8d 50 01             	lea    0x1(%eax),%edx
  40498b:	89 54 24 0c          	mov    %edx,0xc(%esp)
  40498f:	c6 00 00             	movb   $0x0,(%eax)
  404992:	8b 04 24             	mov    (%esp),%eax
  404995:	0f b6 00             	movzbl (%eax),%eax
  404998:	3c 3b                	cmp    $0x3b,%al
  40499a:	74 3c                	je     4049d8 <SpiltCommand+0x170>
  40499c:	8b 04 24             	mov    (%esp),%eax
  40499f:	0f b6 00             	movzbl (%eax),%eax
  4049a2:	3c 7c                	cmp    $0x7c,%al
  4049a4:	74 32                	je     4049d8 <SpiltCommand+0x170>
  4049a6:	8b 04 24             	mov    (%esp),%eax
  4049a9:	0f b6 00             	movzbl (%eax),%eax
  4049ac:	3c 26                	cmp    $0x26,%al
  4049ae:	74 28                	je     4049d8 <SpiltCommand+0x170>
  4049b0:	8b 04 24             	mov    (%esp),%eax
  4049b3:	0f b6 00             	movzbl (%eax),%eax
  4049b6:	3c 3e                	cmp    $0x3e,%al
  4049b8:	74 1e                	je     4049d8 <SpiltCommand+0x170>
  4049ba:	8b 04 24             	mov    (%esp),%eax
  4049bd:	0f b6 00             	movzbl (%eax),%eax
  4049c0:	3c 3c                	cmp    $0x3c,%al
  4049c2:	74 14                	je     4049d8 <SpiltCommand+0x170>
  4049c4:	8b 04 24             	mov    (%esp),%eax
  4049c7:	0f b6 00             	movzbl (%eax),%eax
  4049ca:	3c 28                	cmp    $0x28,%al
  4049cc:	74 0a                	je     4049d8 <SpiltCommand+0x170>
  4049ce:	8b 04 24             	mov    (%esp),%eax
  4049d1:	0f b6 00             	movzbl (%eax),%eax
  4049d4:	3c 29                	cmp    $0x29,%al
  4049d6:	75 37                	jne    404a0f <SpiltCommand+0x1a7>
  4049d8:	8b 44 24 08          	mov    0x8(%esp),%eax
  4049dc:	8d 50 01             	lea    0x1(%eax),%edx
  4049df:	89 54 24 08          	mov    %edx,0x8(%esp)
  4049e3:	8b 54 24 0c          	mov    0xc(%esp),%edx
  4049e7:	89 14 85 20 a2 40 00 	mov    %edx,0x40a220(,%eax,4)
  4049ee:	8b 44 24 0c          	mov    0xc(%esp),%eax
  4049f2:	8d 50 01             	lea    0x1(%eax),%edx
  4049f5:	89 54 24 0c          	mov    %edx,0xc(%esp)
  4049f9:	8b 14 24             	mov    (%esp),%edx
  4049fc:	0f b6 12             	movzbl (%edx),%edx
  4049ff:	88 10                	mov    %dl,(%eax)
  404a01:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404a05:	8d 50 01             	lea    0x1(%eax),%edx
  404a08:	89 54 24 0c          	mov    %edx,0xc(%esp)
  404a0c:	c6 00 00             	movb   $0x0,(%eax)
  404a0f:	8b 04 24             	mov    (%esp),%eax
  404a12:	83 c0 01             	add    $0x1,%eax
  404a15:	89 44 24 04          	mov    %eax,0x4(%esp)
  404a19:	8b 04 24             	mov    (%esp),%eax
  404a1c:	0f b6 00             	movzbl (%eax),%eax
  404a1f:	84 c0                	test   %al,%al
  404a21:	0f 85 68 fe ff ff    	jne    40488f <SpiltCommand+0x27>
  404a27:	8b 44 24 08          	mov    0x8(%esp),%eax
  404a2b:	83 c4 1c             	add    $0x1c,%esp
  404a2e:	c3                   	ret

00404a2f <NextKeyToken>:
  404a2f:	83 ec 10             	sub    $0x10,%esp
  404a32:	8b 44 24 14          	mov    0x14(%esp),%eax
  404a36:	89 44 24 0c          	mov    %eax,0xc(%esp)
  404a3a:	eb 72                	jmp    404aae <NextKeyToken+0x7f>
  404a3c:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404a40:	0f b6 00             	movzbl (%eax),%eax
  404a43:	3c 3b                	cmp    $0x3b,%al
  404a45:	74 42                	je     404a89 <NextKeyToken+0x5a>
  404a47:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404a4b:	0f b6 00             	movzbl (%eax),%eax
  404a4e:	3c 7c                	cmp    $0x7c,%al
  404a50:	74 37                	je     404a89 <NextKeyToken+0x5a>
  404a52:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404a56:	0f b6 00             	movzbl (%eax),%eax
  404a59:	3c 26                	cmp    $0x26,%al
  404a5b:	74 2c                	je     404a89 <NextKeyToken+0x5a>
  404a5d:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404a61:	0f b6 00             	movzbl (%eax),%eax
  404a64:	3c 3e                	cmp    $0x3e,%al
  404a66:	74 21                	je     404a89 <NextKeyToken+0x5a>
  404a68:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404a6c:	0f b6 00             	movzbl (%eax),%eax
  404a6f:	3c 3c                	cmp    $0x3c,%al
  404a71:	74 16                	je     404a89 <NextKeyToken+0x5a>
  404a73:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404a77:	0f b6 00             	movzbl (%eax),%eax
  404a7a:	3c 28                	cmp    $0x28,%al
  404a7c:	74 0b                	je     404a89 <NextKeyToken+0x5a>
  404a7e:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404a82:	0f b6 00             	movzbl (%eax),%eax
  404a85:	3c 29                	cmp    $0x29,%al
  404a87:	75 15                	jne    404a9e <NextKeyToken+0x6f>
  404a89:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404a8d:	83 e8 01             	sub    $0x1,%eax
  404a90:	0f b6 00             	movzbl (%eax),%eax
  404a93:	3c 5c                	cmp    $0x5c,%al
  404a95:	75 24                	jne    404abb <NextKeyToken+0x8c>
  404a97:	83 44 24 0c 02       	addl   $0x2,0xc(%esp)
  404a9c:	eb 10                	jmp    404aae <NextKeyToken+0x7f>
  404a9e:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404aa2:	0f b6 00             	movzbl (%eax),%eax
  404aa5:	3c 20                	cmp    $0x20,%al
  404aa7:	74 15                	je     404abe <NextKeyToken+0x8f>
  404aa9:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  404aae:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404ab2:	0f b6 00             	movzbl (%eax),%eax
  404ab5:	84 c0                	test   %al,%al
  404ab7:	75 83                	jne    404a3c <NextKeyToken+0xd>
  404ab9:	eb 04                	jmp    404abf <NextKeyToken+0x90>
  404abb:	90                   	nop
  404abc:	eb 01                	jmp    404abf <NextKeyToken+0x90>
  404abe:	90                   	nop
  404abf:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404ac3:	83 c4 10             	add    $0x10,%esp
  404ac6:	c3                   	ret

00404ac7 <TrimLeft>:
  404ac7:	83 ec 10             	sub    $0x10,%esp
  404aca:	8b 44 24 14          	mov    0x14(%esp),%eax
  404ace:	89 44 24 0c          	mov    %eax,0xc(%esp)
  404ad2:	eb 05                	jmp    404ad9 <TrimLeft+0x12>
  404ad4:	83 44 24 0c 01       	addl   $0x1,0xc(%esp)
  404ad9:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404add:	0f b6 00             	movzbl (%eax),%eax
  404ae0:	3c 20                	cmp    $0x20,%al
  404ae2:	75 0b                	jne    404aef <TrimLeft+0x28>
  404ae4:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404ae8:	0f b6 00             	movzbl (%eax),%eax
  404aeb:	84 c0                	test   %al,%al
  404aed:	75 e5                	jne    404ad4 <TrimLeft+0xd>
  404aef:	8b 44 24 0c          	mov    0xc(%esp),%eax
  404af3:	83 c4 10             	add    $0x10,%esp
  404af6:	c3                   	ret

00404af7 <main1>:
  404af7:	81 ec 1c 02 00 00    	sub    $0x21c,%esp
  404afd:	83 ec 0c             	sub    $0xc,%esp
  404b00:	68 7c 73 40 00       	push   $0x40737c
  404b05:	e8 70 da ff ff       	call   40257a <printf>
  404b0a:	83 c4 10             	add    $0x10,%esp
  404b0d:	83 ec 0c             	sub    $0xc,%esp
  404b10:	68 e0 9d 40 00       	push   $0x409de0
  404b15:	e8 5d e8 ff ff       	call   403377 <getPath>
  404b1a:	83 c4 10             	add    $0x10,%esp
  404b1d:	c7 84 24 0c 02 00 00 	movl   $0xffffffff,0x20c(%esp)
  404b24:	ff ff ff ff 
  404b28:	c7 05 e8 a2 40 00 00 	movl   $0x0,0x40a2e8
  404b2f:	00 00 00 
  404b32:	e8 1a ef ff ff       	call   403a51 <InitCommandTree>
  404b37:	83 ec 08             	sub    $0x8,%esp
  404b3a:	68 e0 9d 40 00       	push   $0x409de0
  404b3f:	68 a4 73 40 00       	push   $0x4073a4
  404b44:	e8 31 da ff ff       	call   40257a <printf>
  404b49:	83 c4 10             	add    $0x10,%esp
  404b4c:	83 ec 0c             	sub    $0xc,%esp
  404b4f:	8d 44 24 18          	lea    0x18(%esp),%eax
  404b53:	50                   	push   %eax
  404b54:	e8 66 da ff ff       	call   4025bf <gets>
  404b59:	83 c4 10             	add    $0x10,%esp
  404b5c:	83 ec 08             	sub    $0x8,%esp
  404b5f:	8d 44 24 14          	lea    0x14(%esp),%eax
  404b63:	50                   	push   %eax
  404b64:	68 aa 73 40 00       	push   $0x4073aa
  404b69:	e8 eb e4 ff ff       	call   403059 <strcmp>
  404b6e:	83 c4 10             	add    $0x10,%esp
  404b71:	85 c0                	test   %eax,%eax
  404b73:	75 17                	jne    404b8c <main1+0x95>
  404b75:	e8 db e7 ff ff       	call   403355 <syncFileSystem>
  404b7a:	83 ec 0c             	sub    $0xc,%esp
  404b7d:	68 b4 73 40 00       	push   $0x4073b4
  404b82:	e8 f3 d9 ff ff       	call   40257a <printf>
  404b87:	83 c4 10             	add    $0x10,%esp
  404b8a:	eb 66                	jmp    404bf2 <main1+0xfb>
  404b8c:	83 ec 0c             	sub    $0xc,%esp
  404b8f:	8d 44 24 18          	lea    0x18(%esp),%eax
  404b93:	50                   	push   %eax
  404b94:	e8 cf fc ff ff       	call   404868 <SpiltCommand>
  404b99:	83 c4 10             	add    $0x10,%esp
  404b9c:	a3 e8 a2 40 00       	mov    %eax,0x40a2e8
  404ba1:	a1 e8 a2 40 00       	mov    0x40a2e8,%eax
  404ba6:	83 e8 01             	sub    $0x1,%eax
  404ba9:	83 ec 04             	sub    $0x4,%esp
  404bac:	6a 00                	push   $0x0
  404bae:	50                   	push   %eax
  404baf:	6a 00                	push   $0x0
  404bb1:	e8 c2 f4 ff ff       	call   404078 <AnalizeCommand>
  404bb6:	83 c4 10             	add    $0x10,%esp
  404bb9:	89 84 24 0c 02 00 00 	mov    %eax,0x20c(%esp)
  404bc0:	83 bc 24 0c 02 00 00 	cmpl   $0x0,0x20c(%esp)
  404bc7:	00 
  404bc8:	0f 88 4f ff ff ff    	js     404b1d <main1+0x26>
  404bce:	8b 84 24 0c 02 00 00 	mov    0x20c(%esp),%eax
  404bd5:	6b c0 44             	imul   $0x44,%eax,%eax
  404bd8:	05 80 90 40 00       	add    $0x409080,%eax
  404bdd:	83 ec 04             	sub    $0x4,%esp
  404be0:	6a 00                	push   $0x0
  404be2:	6a 00                	push   $0x0
  404be4:	50                   	push   %eax
  404be5:	e8 22 fa ff ff       	call   40460c <ExecuteCommand>
  404bea:	83 c4 10             	add    $0x10,%esp
  404bed:	e9 2b ff ff ff       	jmp    404b1d <main1+0x26>
  404bf2:	b8 00 00 00 00       	mov    $0x0,%eax
  404bf7:	81 c4 1c 02 00 00    	add    $0x21c,%esp
  404bfd:	c3                   	ret

00404bfe <__CTOR_LIST__>:
  404bfe:	ff                   	(bad)
  404bff:	ff                   	(bad)
  404c00:	ff                   	(bad)
  404c01:	ff 00                	incl   (%eax)
  404c03:	00 00                	add    %al,(%eax)
	...

00404c06 <__DTOR_LIST__>:
  404c06:	ff                   	(bad)
  404c07:	ff                   	(bad)
  404c08:	ff                   	(bad)
  404c09:	ff 00                	incl   (%eax)
  404c0b:	00 00                	add    %al,(%eax)
	...
